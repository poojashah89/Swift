//
//  FinalResultController.swift
//  DermaCare
//
//  Created by Pooj on 5/8/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation
import Firebase
import UIKit
import MessageUI

class FinalResultController: UIViewController {

    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var resultText: UITextView!
    
    var resultmessage: String?
    var ref = Database.database().reference(withPath: "userlist")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startObservingDatabase ()
        
        print("result : \( resultmessage ?? " ")")
        resultText.text = resultmessage
        
    }
    override func viewWillAppear(_ animated: Bool) {
        //tableView.separatorStyle = .none
        
        
    }
    
    func startObservingDatabase () {
        let userID = Auth.auth().currentUser?.uid
        
        ref.child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
            let value = snapshot.value as? NSDictionary
            let uname = value!["userName"] as? String
            let startmessage = "Hello \(uname ?? " ") \n Thanks for trying DermaCare Diagnosis for your skin care"
            self.username.text = startmessage
            
        }) { (error) in
            print(error.localizedDescription)
        }
    }
    
}
