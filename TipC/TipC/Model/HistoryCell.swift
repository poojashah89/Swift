//
//  HistoryCell.swift
//  TipC
//
//  Created by Pooja Shah on 1/8/18.
//  Copyright © 2018 Pooja Shah. All rights reserved.
//

import UIKit

class HistoryCell: UITableViewCell {

    @IBOutlet weak var place: UILabel!
    
    @IBOutlet weak var timestamp: UILabel!
    
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var tip: UILabel!
    
    
    @IBOutlet weak var counter: UILabel!
    
    var historyObj: HistoryObject! {
        didSet {
            place.text = historyObj.place
            tip.text = historyObj.tip
            total.text = historyObj.total
            timestamp.text = historyObj.timestamp
            counter.text = historyObj.counter
        }
    }
}
