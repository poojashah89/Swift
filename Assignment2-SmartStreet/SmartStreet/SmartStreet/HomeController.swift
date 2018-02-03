//
//  HomeController.swift
//  SmartStreet
//
//  Created by Pooj on 10/24/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import UIKit


class HomeController: UIViewController {
    
    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        leadingConstraint.constant = -140
        
        let storeduser = UserDefaults.standard.string(forKey: "nametext")
        print(storeduser!)
        username.text = storeduser!
       
        let ifLoggedin = UserDefaults.standard.bool(forKey: "isLoginSuccess")
        if(ifLoggedin) {
             print("ifLoggedin")
        }
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openmenu(_ sender: Any) {
        if(menuShowing) {
            leadingConstraint.constant = -140
            
        } else {
            leadingConstraint.constant = 0
            
            
        }
        
        menuShowing = !menuShowing
    }
    
}


