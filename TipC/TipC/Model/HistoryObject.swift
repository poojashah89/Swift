//
//  HistoryObject.swift
//  TipC
//
//  Created by Pooja Shah on 1/8/18.
//  Copyright © 2018 Pooja Shah. All rights reserved.
//

import Foundation

class HistoryObject {
    let place: String?
    let tip: String?
    let total: String?
    let timestamp: String?
    let counter: String?
    
    init?(counter: Int, place: String, tip: String, total: String, timestamp: String) {
        self.place = place
        self.tip = "$ " + tip
        self.total = "$ " + total
        self.timestamp = "Visited  \(timestamp)"
        self.counter = String(counter) + "."
    }
}
