//
//  AccountController.swift
//  DermaCare
//
//  Created by Dermacare Team on 2/1/18.
//  Copyright © 2018 Dermacare. All rights reserved.
//

import Foundation
import FirebaseAuth
import UIKit
import FirebaseDatabase

class AccountController: UIViewController {
    
    @IBOutlet weak var userNameText: UILabel!
    
    @IBOutlet weak var ageText: UILabel!
    
    @IBOutlet weak var genderText: UILabel!
    
    @IBOutlet weak var heartrateText: UILabel!
    
    @IBOutlet weak var bpText: UILabel!
    
    @IBOutlet weak var weightText: UILabel!
    
    @IBOutlet weak var temperatureText: UILabel!
    
    @IBOutlet weak var calText: UILabel!
    
    @IBOutlet weak var heightText: UILabel!
    
    @IBOutlet weak var healthSyncButton: UISwitch!
    
    
    var ref = Database.database().reference(withPath: "patientlist")
    private var databaseHandle: DatabaseHandle!

    var HealthModelItems = [HealthModel]()
    
    @IBAction func healthKitSyncSwitch(_ sender: Any) {
        if(self.healthSyncButton.isOn){
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //let healthTree = Database.database().reference(withPath: "patientlist").child(uid!).child("health")
        
        startObservingDatabase()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func userLogOut(_ sender: Any) {
        try! Auth.auth().signOut()
        performSegue(withIdentifier: "logoutSegue", sender: self)
    }
    
    func startObservingDatabase () {
        let userID = Auth.auth().currentUser?.uid
        print("Getting information for user \(userID)" )
        
        ref.child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
            let value = snapshot.value as? NSDictionary
            let ifON = value?["isHealthSync"] as? Bool ?? true
            
            if(ifON){
                self.healthSyncButton.setOn(true, animated: true)
            } else {
                self.healthSyncButton.setOn(false, animated: true)
            }
            
        }) { (error) in
            print(error.localizedDescription)
        }
        
        ref.child(userID!).child("health").observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
            let value = snapshot.value as? NSDictionary
            
            let age = value?["age"] as? String ?? "N/A"
            let wt = value?["weight"] as? String ?? "N/A"
            let ht = value?["height"] as? String ?? "N/A"
            let gender = value?["sex"] as? String ?? "N/A"
            let bp = value?["bloodType"] as? String ?? "N/A"
            
            self.ageText.text = "\(age) Years Old"
            self.bpText.text = bp
            self.weightText.text = wt
            self.heightText.text = ht
            self.genderText.text = gender
            
        }) { (error) in
            print(error.localizedDescription)
        }
        
    }
    
    /*deinit {
        ref.child(self.user.uid).child("health").removeObserver(withHandle: databaseHandle)
    }*/
}


extension AccountController: HKManagerDelegate {
    func didRecieveDataUpdate(data: HKManager) {
        print("Health Data Imported")
        
    }
    
}

