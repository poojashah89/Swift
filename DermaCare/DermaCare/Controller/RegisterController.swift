//
//  RegisterController.swift
//  DermaCare
//
//  Created by Dermacare Team on 2/1/18.
//  Copyright © 2018 Dermacare. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase
import FirebaseAuth

class RegisterController: UIViewController {
    
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var verifyText: UITextField!
    
    @IBOutlet weak var phoneNo: UIImageView!
    
    @IBOutlet weak var loginTypeSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var healthDataConnectSwitch: UISwitch!
    
    var handle: AuthStateDidChangeListenerHandle?
    
    var databaseReference : DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func registerAction(_ sender: Any) {
        databaseReference = Database.database().reference()
       
        
        var userType = "User"
        if(loginTypeSegmentedControl.selectedSegmentIndex == 0) {
            userType = "User"
        } else {
            userType = "Doctor"
        }
        
       
        
        if(emailText.text != "" && passwordText.text != "") {
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!, completion: { (user, error) in
                if user != nil {
                    let email = user?.email
                     print("User is registered successfully for \(String(describing: email))")
                    
                     self.databaseReference.child("userlist").childByAutoId().setValue(self.usernameText.text)
                    
                     self.performSegue(withIdentifier: "loginSegue", sender: self)
                    
                } else {
                    if let signInError = error?.localizedDescription {
                        print(signInError)
                    } else {
                        print("Unknown Error")
                    }
                }
            })
        }
       
    }
    
}

