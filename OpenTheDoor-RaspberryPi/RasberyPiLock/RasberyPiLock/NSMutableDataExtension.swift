//
//  NSMutableDataExtension.swift
//  RasberyPiLock
//
//  Created by Sneha Kasetty Sudarshan on 12/7/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import Foundation

extension NSMutableData {
    func appendString(_ string: String) {
        let data = string.data(using: String.Encoding.utf8, allowLossyConversion: false)
        append(data!)
    }
}

