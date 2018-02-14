//
//  LoginController.swift
//  DermaCare
//
//  Created by Dermacare Team on 2/1/18.
//  Copyright © 2018 Dermacare. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

class LoginController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordtext: UITextField!
    
    var handle: AuthStateDidChangeListenerHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        if(emailText.text != "" && passwordtext.text != "") {
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordtext.text!) { (user, error) in
                if let user = user {
                    // The user's ID, unique to the Firebase project.
                    // To handle auth token. Use getTokenWithCompletion:completion: instead.
                    let email = user.email
                    print("Sign in successful for \(String(describing: email))")
                   
                    self.performSegue(withIdentifier: "loginSegue", sender: self)
                    
                } else {
                    if let signInError = error?.localizedDescription {
                        print(signInError)
                    } else {
                        print("Unknown Error")
                    }
                }
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //Add listener
         handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            
        }
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        //Detach the listener
        Auth.auth().removeStateDidChangeListener(handle!)
    }
    
}
