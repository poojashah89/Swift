//
//  UIAlertController+Utility.swift
//  BLEScanner
//
//  Created by HARRY G GOODWIN on 22/10/2017.
//  Copyright © 2017 GG. All rights reserved.
//

import UIKit

extension UIAlertController {
    static func presentAlert(on viewController: UIViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        viewController.present(alert, animated: true)
    }
}
