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
    
    var user = Auth.auth().currentUser!
    
    var ref = Database.database().reference(withPath: "patientlist")
    private var databaseHandle: DatabaseHandle!

    var HealthModelItems = [HealthModel]()
    
    @IBAction func healthKitSyncSwitch(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.user.email)
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
         print(self.user.uid)
        
        databaseHandle = ref.child(self.user.uid).child("health").observe(.value, with: { (snapshot) in
            var newItems = [HealthModel]()
            
            for itemSnapShot in snapshot.children {
                let item = HealthModel(snapshot: itemSnapShot as! DataSnapshot)
                
                self.ageText.text = "\(item.age) Years Old"
                self.bpText.text = item.bloodType
                self.weightText.text = item.weight
                self.heightText.text = item.height
                self.genderText.text = item.sex
                
                newItems.append(item)
            }
            
            self.HealthModelItems = newItems
            
        })
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

