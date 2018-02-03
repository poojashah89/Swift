//
//  RegisterController.swift
//  SmartStreet
//
//  Created by Pooj on 10/24/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import UIKit
import Foundation

class RegisterController: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var phone: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var repeatpwd: UITextField!
    
    var user: String?
    //var refSignUpDetails: DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // refSignUpDetails = Database.database().reference().child("users");
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func signup(_ sender: Any) {
       //  let key = refSignUpDetails.childByAutoId().key
        let nametext = name.text
        let emailtext = email.text
        let phonetext = phone.text
        let passwordtext = password.text
        let repeatpwdtext = repeatpwd.text
        
        if (nametext!.isEmpty || emailtext!.isEmpty || emailtext!.isEmpty || phonetext!.isEmpty || passwordtext!.isEmpty )
        {
            alertMessage(msg: "Values can not be empty")
            return
        }
        
        else if(passwordtext != repeatpwdtext){
            alertMessage(msg: "Password and Verify password should match")
            return
        }
        
        else{
             let defaults:UserDefaults = UserDefaults.standard
            defaults.setValue(nametext, forKey: "nametext")
           defaults.setValue(emailtext, forKey: "emailtext")
           defaults.setValue(phonetext, forKey: "phonetext")
           defaults.setValue(passwordtext, forKey: "passwordtext")
            defaults.setValue("11/01/2017", forKey: "datejoined")
            
            UserDefaults.standard.set(true, forKey: "isLoginSuccess")
            UserDefaults.standard.synchronize()
            
            let alertController = UIAlertController(title: "Success!", message: "Registration successful", preferredStyle: .alert)
            
            alertController.addAction(UIAlertAction(title: "Log me in", style: .default, handler: { action in
                
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let nextViewController = storyBoard.instantiateViewController(withIdentifier: "homeC") as! HomeController
                self.present(nextViewController, animated: true, completion: nil)
             
                
            }))
            
            //let signupDetail = ["id":key, "name": nametext! as String,"phone": phonetext.text! as String, "email": email.text! as String, "password": passwordtext! as String]
            
           // refSignUpDetails.child(key).setValue(signupDetail)
            
            
            self.present(alertController, animated: true, completion: nil)
            
           
            
        }
        // performSegue(withIdentifier: "loggedinuser", sender: user)
        
       
     
    }
    
    
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let ifLoggedin = UserDefaults.standard.bool(forKey: "isLoginSuccess")
        if(ifLoggedin) {
            if segue.identifier == "loggedinuser"{
                let tabBarC : HomeController = (segue.destination as? HomeController)!
                tabBarC.loggedinuser = user
            }
        }
    }*/
    
    func alertMessage(msg : String){
        let alert = UIAlertController(title: "ERROR", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
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

