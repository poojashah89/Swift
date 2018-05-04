//
//  ViewAppointmentController.swift
//  DermaCare
//  Created by Dermacare Team on 2/1/18.
//  Copyright © 2018 Dermacare. All rights reserved.
//

import Foundation
import UIKit

import Firebase

class ViewAppointmentController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var apptTableView: UITableView!
    
    @IBOutlet weak var noTable: UILabel!
    
    var docList=Array<PatientAppointmentModel>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        apptTableView.delegate = self
        apptTableView.dataSource = self
        
        fetchDoctorListData()
        
        //apptTableView.rowHeight = UITableViewAutomaticDimension
        //apptTableView.estimatedRowHeight = 140
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    func fetchDoctorListData(){
        let rootRef = Database.database().reference()
        let refuser = rootRef.child("userlist")
        let userID: String = (Auth.auth().currentUser?.uid)!
        refuser.child(userID).child("appointments").observe(.value, with: {(snapshot) in
            if let users = snapshot.value as? [String:AnyObject] {
                for (key, user) in users {
                    let doc  = user["doctor"] as? String
                    let doctorItem = PatientAppointmentModel(docName: doc!, date: key)
                    self.docList.append(doctorItem)
                    DispatchQueue.main.async(execute: {
                        self.apptTableView.reloadData()
                    })
                }
            }
        })
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(self.docList.count > 0) {
            self.noTable.text = "You have \(docList.count) appointments!"
            return docList.count;
        }
        else {
            self.noTable.text = "You have no appointments!"
            tableView.separatorStyle = .none
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = apptTableView.dequeueReusableCell(withIdentifier: "ViewAppointmentCell") as? ViewAppointmentCell else {
            return UITableViewCell()
        }
        cell.docImage.image = UIImage(named: "doc.png")
        cell.docName.text = docList[indexPath.row].docName
        cell.date.text = docList[indexPath.row].date
        return cell;
    }
    
    
}
