//
//  ServiceTableViewCell.swift
//  BLEScanner
//
//  Created by Harry Goodwin on 18/07/2016.
//  Copyright © 2016 GG. All rights reserved.
//

import UIKit
import CoreBluetooth

protocol ServiceCellDelegate: class {
    func didNotifyonnect(_ cell: ServiceTableViewCell, serviceName: String)
}

class ServiceTableViewCell: UITableViewCell {

	@IBOutlet weak var serviceNameLabel: UILabel!
	@IBOutlet weak var serviceCharacteristicsButton: UIButton!
    
    @IBOutlet weak var nitificationText: UITextField!
    weak var celldelegate: ServiceCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
	}
	
	/*@IBAction func characteristicsButtonPressed(_ sender: AnyObject) {
        print("char pressed")
	}*/
  

    @IBAction func characteristicsButtonPressed(_ sender: Any) {
        print("char pressed " + serviceNameLabel.text!)
        nitificationText.text = "changing Notification..."
        self.celldelegate?.didNotifyonnect(self, serviceName: serviceNameLabel.text!)
    }
    
}

