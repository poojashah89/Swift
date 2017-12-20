//
//  customtableview.swift
//  RasberyPiLock
//
//  Created by chalapati rao avadhanula venkata on 11/29/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import Foundation
import UIKit

class customtableview: UITableViewCell{
    
    @IBOutlet weak var historyview: UIView!
    @IBOutlet weak var historyimage: UIImageView!
    @IBOutlet weak var historyuser: UILabel!
    @IBOutlet weak var contactsview: UIView!
    @IBOutlet weak var contactsimage:UIImageView!
    @IBOutlet weak var contactsname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
