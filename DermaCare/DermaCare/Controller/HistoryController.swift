//
//  HistoryController.swift
//  DermaCare
//
//  Created by Pooj on 4/17/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation
import UIKit
import Firebase

struct HistoryDetails : Decodable{
    let image: String
    let date: String
    let results: String
}


class HistoryController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var historydataURL = [String]()
    var imagename = [String]()
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
       
         //print("sneha doctordataURL", self.historydataURL)
      
        tableview.delegate = self
        tableview.dataSource = self
        
        loaddata()
        
        self.tableview.reloadData()
        
    }
    
    func loaddata(){
        let userID: String = (Auth.auth().currentUser?.uid)!
        
        let ref = Database.database().reference()
        
        let refuser = ref.child("userlist/\(userID)").child("Photos")
        
        refuser.observe(.value, with: {(snapshot) in
            
            if(snapshot.exists()){
                
                for item in snapshot.children{
                    let child = item as AnyObject
                    //if(child.key != "Nil"){
                        
                        self.imagename.append(child.key)
                        self.historydataURL.append(child.value)
                   
                    DispatchQueue.main.async(execute: {
                        self.tableview.reloadData()
                    })
                        
                    }
                }
                
            //}
            
            else{
                
                let refuser = ref.child("userlist/\(userID)").child("Photos")
                
                refuser.observe(.value, with: {(snapshot) in
                    
                    if(snapshot.exists()){
                        
                        for item in snapshot.children{
                            let child = item as AnyObject
                            if(child.key != "Nil"){
                                
                                self.historydataURL.append(child.key)
                                
                                print("sneha patientdataURL", self.historydataURL)
                                
                                DispatchQueue.main.async(execute: {
                                  self.tableview.reloadData()
                                })
                                
                                
                            }
                        }
                        
                    }
                    
                    
                })
                
            }
            
        })
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print ("Hostory data count", self.historydataURL.count)
        return self.historydataURL.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        guard let cell = tableview.dequeueReusableCell(withIdentifier: "HistoryTableViewCell") as?HistoryTableViewCell else {
            return UITableViewCell()
        }
        
        let userID: String = (Auth.auth().currentUser?.uid)!
        let imageNameLocal = self.imagename[indexPath.row]
        let storage = Storage.storage().reference(forURL: "gs://dermacare-b1017.appspot.com/ImagesUploaded/\(userID)/\(imageNameLocal)")
        
        storage.getMetadata { metadata, error in
            if let error = error {
                print("error occurred", error)
            }else{
                let date = metadata?.timeCreated
                //print("date", date )
                cell.resultLabel?.text = imageNameLocal
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                cell.dateLabel?.text = formatter.string(from: date as! Date)
            }
        }
       /*
        storage.getData(maxSize: 10 * 1024 * 1024) { data, error in
            if data != nil{
                let loadedImage = UIImage(data: data!)
                DispatchQueue.main.async {
                    cell.imageView?.image = loadedImage
                }
            }
        }
        
        
        */
        //print(imageURL)

        storage.downloadURL(completion: { (url, error) in

            if error != nil {
                print(error?.localizedDescription)
                return
            }

            URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in

                if error != nil {
                    print(error)
                    return
                }

                guard let imageData = UIImage(data: data!) else { return }

                DispatchQueue.main.async {
                    cell.imageView?.image = imageData
                    self.tableview.reloadData()
                }

            }).resume()

        })
        
       
        
         return cell
    }
    

}
