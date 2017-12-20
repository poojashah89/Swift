//
//  ViewController.swift
//  iCloudAssignment
//
//  Created by Pooj on 9/26/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import UIKit
import CloudKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var location: UITextField!
    
    @IBOutlet weak var calldesc: UITextView!
    
    @IBOutlet weak var reason: UITextField!
    
    let publicDatabase = CKContainer.default().publicCloudDatabase
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    
    @IBAction func save(_ sender: Any) {
        
        let store = CKRecord(recordType: "CustomerCallDetails")
        store.setObject(location.text as CKRecordValue?, forKey: "location")
        
        store.setObject(calldesc.text as CKRecordValue?, forKey: "description")
        store.setObject(reason.text as CKRecordValue?, forKey: "reason")
        
        
        publicDatabase.save(store) { (saveRecord, error) in
            if error != nil {
                print("error occured " + error.debugDescription)
            } else {
                // create the alert
                let alert = UIAlertController(title: "Details Saved", message: "Call Details saved", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    
}

