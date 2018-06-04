//
//  CBPeripheral+Name.swift
//  BLEScanner
//
//  Created by HARRY G GOODWIN on 23/10/2017.
//  Copyright © 2017 GG. All rights reserved.
//

import Foundation
import CoreBluetooth

extension CBPeripheral {
    var displayName: String {
        guard let name = name, !name.isEmpty else { return "No Device Name" }
        return name
    }
}
