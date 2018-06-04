//
//  UIButton+Style.swift
//  BLEScanner
//
//  Created by Harry Goodwin on 18/07/2016.
//  Copyright © 2016 GG. All rights reserved.
//

import UIKit

extension UIButton {
    func style(with color: UIColor) {
        layer.borderWidth = 1.5
        layer.borderColor = color.cgColor
        layer.cornerRadius = 3
    }
    
    func update(isScanning: Bool){
        let title = isScanning ? "Stop Scanning" : "Start Scanning"
        setTitle(title, for: UIControlState())
        
        let titleColor: UIColor = isScanning ? .btOrange : .btBlue
        setTitleColor(titleColor, for: UIControlState())
        
        backgroundColor = isScanning ? UIColor.clear : .white
    }
}
