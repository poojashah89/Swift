//
//  LoginController.swift
//  SmartStreet
//
//  Created by Pooj on 10/24/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit

class LoginController: UIViewController, UITextFieldDelegate  {
    
    var user:String?
    @IBOutlet weak var emailid: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func signup(_ sender: Any) {
        
        let emailidtext = emailid.text
        let passtext = password.text
        
        let storeduser = UserDefaults.standard.string(forKey: "emailtext")
        let storedpass = UserDefaults.standard.string(forKey: "passwordtext")
        
        if(emailidtext == storeduser && storedpass == passtext) {
           //Login Successful
           /* UserDefaults.standard.set(true, forKey: "isLoginSuccess")
            UserDefaults.standard.synchronize()
            
            user = nameuser
            
            performSegue(withIdentifier: "loggedinuser", sender: user)
            self.dismiss(animated: true, completion:nil)*/
            
            
            
        } else{
            alertMessage(msg: "Email and/or Password do not match")
        }
        
    }
    
    
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loggedinuser"{
            let tabBarC : HomeController = (segue.destination as? HomeController)!
            tabBarC.loggedinuser = user
        }
    }*/
    
    func alertMessage(msg : String){
        let alert = UIAlertController(title: "Message", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: msg, style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
}
