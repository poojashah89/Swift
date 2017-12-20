//
//  PeripheralTableViewController.swift
//  BLEScanner
//
//  Created by Harry Goodwin on 21/01/2016.
//  Copyright © 2016 GG. All rights reserved.
//

import CoreBluetooth
import UIKit

struct DisplayPeripheral: Hashable {
	let peripheral: CBPeripheral
	let lastRSSI: NSNumber
	let isConnectable: Bool
    
    var hashValue: Int { return peripheral.hashValue }
    
    static func ==(lhs: DisplayPeripheral, rhs: DisplayPeripheral) -> Bool {
        return lhs.peripheral == rhs.peripheral
    }
}

class PeripheralViewController: UIViewController {
	@IBOutlet private weak var scanningButton: UIButton!
	@IBOutlet private weak var tableView: UITableView!
    
    private var centralManager: CBCentralManager!
    private var peripherals = Set<DisplayPeripheral>()
	private var viewReloadTimer: Timer?
	
	private var selectedPeripheral: CBPeripheral?
    
    var connectingViewController: UIViewController?
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		centralManager = CBCentralManager(delegate: self, queue: DispatchQueue.main)
	}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStatusText("")
        scanningButton.style(with: .btBlue)
        setupNavBar()
        tableView.contentInset = UIEdgeInsets(top: 6, left: 0, bottom: 0, right: 0)
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
        selectedPeripheral = nil
		viewReloadTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(refreshScanView), userInfo: nil, repeats: true)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		viewReloadTimer?.invalidate()
	}
    
    private func setupNavBar() {
        navigationController?.navigationBar.barTintColor = .btBlue
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        let backButton = UIBarButtonItem(title: "Disconnect", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        backButton.tintColor = .white
        navigationItem.backBarButtonItem = backButton
    }
	
	private func updateViewForScanning(){
		updateStatusText("Scanning BLE Devices...")
        scanningButton.update(isScanning: true)
	}
	
	private func updateViewForStopScanning(){
		let plural = peripherals.count > 1 ? "s" : ""
		updateStatusText("\(peripherals.count) Device\(plural) Found")
        scanningButton.update(isScanning: false)
	}

	@IBAction private func scanningButtonPressed(_ sender: AnyObject){
		if centralManager!.isScanning{
			centralManager?.stopScan()
			updateViewForStopScanning()
		}else{
			startScanning()
		}
	}
	
	private func startScanning(){
        updateViewForScanning()
		peripherals = []
		self.centralManager?.scanForPeripherals(withServices: nil, options: [CBCentralManagerScanOptionAllowDuplicatesKey: true])
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [weak self] in
            guard let strongSelf = self else { return }
            if strongSelf.centralManager!.isScanning {
                strongSelf.centralManager?.stopScan()
                strongSelf.updateViewForStopScanning()
            }
        }
	}
	
    @objc private func refreshScanView() {
		if peripherals.count > 1 && centralManager!.isScanning{
			tableView.reloadData()
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let destinationViewController = segue.destination as? PeripheralConnectedViewController{
			destinationViewController.setup(with: centralManager, peripheral: selectedPeripheral!)
        } else if let connectingVC = segue.destination as? ConnectingViewController {
            connectingVC.delegate = self
            if let selectedPeripheral = selectedPeripheral {
                connectingVC.peripheralName = selectedPeripheral.displayName
            }

            connectingViewController = connectingVC
        }
	}
    
    private func showLoading() {
        performSegue(withIdentifier: "LoadingSegue", sender: self)
    }
    
    private func updateStatusText(_ text: String) {
        title = text
    }
}

extension PeripheralViewController: CBCentralManagerDelegate{
	func centralManagerDidUpdateState(_ central: CBCentralManager){
		if (central.state == .poweredOn){
			startScanning()
		}else{
            UIAlertController.presentAlert(on: self, title: "Bluetooth Unavailable", message: "Please turn bluetooth on")
		}
	}
	
	func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber){
		let isConnectable = advertisementData["kCBAdvDataIsConnectable"] as! Bool
		let displayPeripheral = DisplayPeripheral(peripheral: peripheral, lastRSSI: RSSI, isConnectable: isConnectable)
		peripherals.insert(displayPeripheral)
		tableView.reloadData()
	}
}

extension PeripheralViewController: CBPeripheralDelegate {
	func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        connectingViewController?.dismiss(animated: true, completion: {
            var errorMessage = "Could not connect"
            if let selectedPeripheralName = self.selectedPeripheral?.name {
                errorMessage += " \(selectedPeripheralName)"
            }
            
            if let error = error {
                print("Error connecting peripheral: \(error.localizedDescription)")
                errorMessage += "\n \(error.localizedDescription)"
            }
        
            UIAlertController.presentAlert(on: self, title: "Error", message: errorMessage)
        })
	}
	
	func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        connectingViewController?.dismiss(animated: true, completion: {
            print("Peripheral connected")
            self.performSegue(withIdentifier: "PeripheralConnectedSegue", sender: self)
            peripheral.discoverServices(nil)
        })
	}
}

extension PeripheralViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! DeviceTableViewCell
        
        let peripheralsArray = Array(peripherals)
        if peripheralsArray.count > indexPath.row {
            cell.populate(displayPeripheral: peripheralsArray[indexPath.row])
        }
		
		cell.delegate = self
		return cell
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		return peripherals.count
	}
}

extension PeripheralViewController: DeviceCellDelegate {
    func didTapConnect(_ cell: DeviceTableViewCell, peripheral: CBPeripheral) {
        if peripheral.state != .connected {
            selectedPeripheral = peripheral
            peripheral.delegate = self
            centralManager.connect(peripheral, options: nil)
            showLoading()
        }
    }
}

extension PeripheralViewController: ConnectingViewControllerDelegate {
    func didTapCancel(_ vc: ConnectingViewController) {
        if let selectedPeripheral = selectedPeripheral {
            centralManager.cancelPeripheralConnection(selectedPeripheral)
        }
        
        connectingViewController?.dismiss(animated: true)
    }
}

