//
//  ViewController.swift
//  AppSquadJavascriptWikitudeSwift
//
//  Created by Sneha Kasetty Sudarshan on 5/7/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DataManager.sharedInstance.login(email: "Sneha@gmail.com", password: "1234") { (loggedIn) in
            DispatchQueue.main.async {
                if(loggedIn!) {
                    print("User not logged in")
                } else {
                    print("User logged in")
                }
            }
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

