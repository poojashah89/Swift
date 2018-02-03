//
//  ProfileController.swift
//  SmartStreet
//
//  Created by Pooj on 10/24/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import UIKit


class ProfileController: UIViewController {
    
   
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var menuShowing = false
    
    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var phoneno: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var datejoined: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = UserDefaults.standard.string(forKey: "nametext")
        email.text = UserDefaults.standard.string(forKey: "emailtext")
        phoneno.text = UserDefaults.standard.string(forKey: "phonetext")
        datejoined.text = "10/25/2017"
        
        username.text = UserDefaults.standard.string(forKey: "nametext")
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

