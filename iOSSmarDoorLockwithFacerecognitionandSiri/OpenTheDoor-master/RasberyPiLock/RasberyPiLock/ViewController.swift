//
//  ViewController.swift
//  RasberyPiLock
//
//  Created by Sneha Kasetty Sudarshan on 10/31/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        INPreferences.requestSiriAuthorization { (status) in
            
        }
        
        let myVocab = ["push up", "sit up", "pull up", "open the door"]
        
        let myVocabSet = NSOrderedSet(array: myVocab) //Convert myVocab to an NSOrderedSet
        
        INVocabulary.shared().setVocabularyStrings(myVocabSet, of: .workoutActivityName)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func lockDoor(_ sender: Any) {
   
        let req = NSMutableURLRequest(url: NSURL(string:"http://192.168.0.104:5000/lock")! as URL)
        req.httpMethod = "GET"
        req.httpBody = "key=\"value\"".data(using: String.Encoding.utf8)
        URLSession.shared.dataTask(with: req as URLRequest) { data, response, error in
            if error != nil {
                // Error
                print(error?.localizedDescription ?? "default error ")
            } else {
                // Successfull
                print(String(data: data!, encoding: String.Encoding.utf8) ?? "default error ")
            }
            }.resume()
        
    }
    
    
    @IBAction func unlockDoor(_ sender: Any) {
        
        let req = NSMutableURLRequest(url: NSURL(string:"http://192.168.0.104:5000/unlock")! as URL)
        req.httpMethod = "GET"
        req.httpBody = "key=\"value\"".data(using: String.Encoding.utf8)
        URLSession.shared.dataTask(with: req as URLRequest) { data, response, error in
            if error != nil {
                // Error
                print(error?.localizedDescription ?? "default error ")
            } else {
                // Successfull
                print(String(data: data!, encoding: String.Encoding.utf8) ?? "default error ")
            }
            }.resume()
        
        
        
    }
    
    
}

