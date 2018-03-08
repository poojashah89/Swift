//
//  HomeController.swift
//  DermaCare
//
//  Created by Dermacare Team on 2/1/18.
//  Copyright © 2018 Dermacare. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth
import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var userText: UILabel!
    
    var userEmail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userText.text = self.userEmail
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
