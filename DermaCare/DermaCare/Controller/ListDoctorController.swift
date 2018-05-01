//
//  ListDoctorController.swift
//  DermaCare
//
//  Created by Dermacare Team on 2/1/18.
//  Copyright © 2018 Dermacare. All rights reserved.
//


import Foundation
import Firebase
import UIKit

class ListDoctorController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var doctorTableView: UITableView!
    
    var docList=Array<DoctorModel>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        doctorTableView.delegate = self
        doctorTableView.dataSource = self
        
        fetchDoctorListData()
        
        doctorTableView.rowHeight = UITableViewAutomaticDimension
        doctorTableView.estimatedRowHeight = 140
    }
    
    func fetchDoctorListData(){
        let rootRef=Database.database().reference()
        //let refuser = rootRef.child("userlist").queryEqual(toValue: "doctor", childKey: "userType")
        let refuser = rootRef.child("userlist")
        //refuser.queryOrdered(byChild: "userType").queryEqual(toValue: "doctor")
        
        refuser.observe(.value, with: {(snapshot) in
        
            if let users = snapshot.value as? [String:AnyObject] {
                for (_,user) in users {
                    
                    let userType  = user["userType"] as? String
                    if(userType == "Doctor"){
                        
                        let user_name = user["userName"] as! String
                        let doc_details = user["details"] as! [String : AnyObject]
                        let spec = doc_details["specialization"] as! String
                        let experience = doc_details["experience"] as! String
                        let hours = doc_details["hours"] as! String
                        let fees = doc_details["fees"] as! Int
                        let doctorItem = DoctorModel(name: user_name,spec: spec, exp: experience, hours: hours, fees: fees)
                        self.docList.append(doctorItem)
                        
                        DispatchQueue.main.async(execute: {
                            self.doctorTableView.reloadData()
                        })
                    }
                }
            }
            
            
            /*for rest in snapshot.children.allObjects as! [DataSnapshot] {
                print(rest.value)
            }*/
            
            /*for item in snapshot.children{
                let child = item as AnyObject
                print("doc list")
                for i in child.allObjects as! [DataSnapshot]{
                    print("child")
                    print(i)
                }
                print(child)
            }*/
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return docList.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = doctorTableView.dequeueReusableCell(withIdentifier: "DoctorTableViewCell") as?DoctorTableViewCell else {
            return UITableViewCell()
        }
        cell.docImage.image = UIImage(named: "doc.png")
        cell.docName.text = docList[indexPath.row].docName
        cell.docSpec.text = docList[indexPath.row].specialization

        return cell;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        if(segue.identifier == "showDoctorDetail"){
            let doctorDetailView = segue.destination as? DoctorController
            
            guard let selectedTableCell = sender as? DoctorTableViewCell else {
                fatalError("Unexpected sender: \(sender)")
            }
            
            guard let indexPath = doctorTableView.indexPath(for: selectedTableCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            let selectedDoctor = docList[indexPath.row]
            doctorDetailView?.doctorDetails = selectedDoctor
            
        }
    }
    
    
}
