//
//  PeripheralConnectedViewController.swift
//  BLEScanner
//
//  Created by Harry Goodwin on 18/07/2016.
//  Copyright © 2016 GG. All rights reserved.
//

import UIKit
import CoreBluetooth

class PeripheralConnectedViewController: UIViewController {
	@IBOutlet private weak var tableView: UITableView!
	@IBOutlet private weak var rssiLabel: UILabel!
	
    var peripheral: CBPeripheral!
    var centralManager: CBCentralManager!
    var selectedChar:CBCharacteristic!
	private var rssiReloadTimer: Timer?
	private var services: [CBService] = []
	
    override func viewDidLoad() {
        super.viewDidLoad()
        
		peripheral.delegate = self
		title = peripheral.name
		tableView.rowHeight = UITableViewAutomaticDimension
		tableView.estimatedRowHeight = 80.0
		tableView.contentInset.top = 5
		
		rssiReloadTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(PeripheralConnectedViewController.refreshRSSI), userInfo: nil, repeats: true)
	}
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        rssiReloadTimer?.invalidate()
        centralManager.cancelPeripheralConnection(peripheral)
    }
    
    func setup(with centralManager: CBCentralManager, peripheral: CBPeripheral) {
        self.centralManager = centralManager
        self.peripheral = peripheral
    }

	@objc private func refreshRSSI(){
		peripheral.readRSSI()
	}

	@objc private func disconnectButtonPressed(_ sender: AnyObject) {
        
		navigationController?.popToRootViewController(animated: true)
	}
    

}


extension PeripheralConnectedViewController: ServiceCellDelegate {
   
    func didNotifyonnect(_ cell: ServiceTableViewCell, serviceName: String) {
        print("selected uuid \(selectedChar.uuid) \(selectedChar.isNotifying)")
        
       
        self.peripheral.setNotifyValue(
            true,
            for: self.selectedChar
        )
        let ifON = selectedChar.isNotifying
        cell.nitificationText.text = " Notification Status : \(ifON.description)"
        print("Notification Status : \(ifON.description)")
        
        if (selectedChar.properties.rawValue & CBCharacteristicProperties.read.rawValue) != 0 {
            peripheral.readValue(for: selectedChar)
        }
        
        peripheral.discoverDescriptors(for: selectedChar)

        
    }
    
    
    func peripheral(_ peripheral: CBPeripheral,
                    didUpdateValueFor characteristic: CBCharacteristic,
                    error: Error?) {
       // print(selectedChar.value!.base64EncodedData())
        if selectedChar.descriptors?.count != 0 {
            for d in selectedChar.descriptors! {
                let desc = d as CBDescriptor!
                
                print( desc?.description as Any)

            }
        }
    }
    
}

extension PeripheralConnectedViewController: UITableViewDataSource{
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return services.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ServiceCell") as! ServiceTableViewCell
		 cell.celldelegate = self
        cell.serviceNameLabel.text = "\(services[indexPath.row].uuid)"
	  	return cell
	}
}

extension PeripheralConnectedViewController: CBPeripheralDelegate {
    
	func centralManager(_ central: CBCentralManager, didFailToConnectPeripheral peripheral: CBPeripheral, error: NSError?) {
        if let error = error {
            print("Error connecting peripheral: \(error.localizedDescription)")
        }
	}

	func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
		if let error = error {
			print("Error discovering services: \(error.localizedDescription)")
		}
		
		peripheral.services?.forEach({ (service) in
			services.append(service)
			tableView.reloadData()
			peripheral.discoverCharacteristics(nil, for: service)
		})
	}
	
	func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
		if let error = error {
			print("Error discovering service characteristics: \(error.localizedDescription)")
		}
		
		service.characteristics?.forEach({ characteristic in
            if let descriptors = characteristic.descriptors {
                print("desc" , descriptors)
            }
            
            self.selectedChar = characteristic
            print("uuid", characteristic.uuid)
            
            self.peripheral.setNotifyValue(
                true,
                for: characteristic
            )
			//print("char props" , characteristic.properties)
           // print("val ", characteristic.value!)
           // print("descr ", characteristic.description)
           // print("uuid", characteristic.uuid)
            
           /* self.peripheral.setNotifyValue(
                true,
                for: characteristic
            )*/
		})
	}
	
	func peripheral(_ peripheral: CBPeripheral, didReadRSSI RSSI: NSNumber, error: Error?) {
		switch RSSI.intValue {
		case -90 ... -60:
			rssiLabel.textColor = .white
			break
		case -200 ... -90:
			rssiLabel.textColor = .white
			break
		default:
			rssiLabel.textColor = .white
		}
		
        rssiLabel.text = "RSSI : \(RSSI)dB"
	}
    
  
    
}
