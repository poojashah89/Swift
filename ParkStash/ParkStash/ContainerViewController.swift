//
//  ContainerViewController.swift
//  ParkStash
//
//  Created by Pooja Shah on 1/24/18.
//  Copyright © 2018 Pooja Shah. All rights reserved.
//

import Foundation

import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    var sideMenu = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func toggleSideMenu() {
        // If side Menu is not open
        
        if(sideMenu) {
            sideMenu = false
            sideMenuConstraint.constant = -240 // Hide it
        } else{
            sideMenu = true
            sideMenuConstraint.constant = 0 // Show it
        }
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
}
