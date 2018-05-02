//
//  ViewAppointmentCell.swift
//  DermaCare
//
//  Created by Pooj on 5/1/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation

import UIKit

class ViewAppointmentCell: UITableViewCell {
    
    @IBOutlet weak var docName: UILabel!
    
    @IBOutlet weak var docImage: UIImageView!
    
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
