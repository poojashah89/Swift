//
//  AppointmentViewController.swift
//  AppSquadJavascriptWikitudeSwift
//
//  Created by Pooja Shah on 5/15/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import Foundation


import UIKit
import HealthKit
import SwiftyJSON

class AppointmentViewController: UIViewController, UITableViewDataSource
{
    //var jsonString : JSON?
    var name: String?
    var doctor: String?
    var date : String?
    
    var apptList = [AppointmentList] ()
    
    @IBOutlet weak var tableViewCell: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCell.dataSource = self
        
        //getAppointments()
        //print("Done")
       
        apptList = []
        getAppointments(completion: { (fetchedData: NSArray) -> () in
            for eachfetchedData in fetchedData {
                let entry = eachfetchedData as! [String : Any]
                let aptEntry = entry["doctor"] as! String
                let dateEntry = entry["apptdate"] as! String
                self.apptList.append(AppointmentList(doctor: aptEntry, date: dateEntry))
                
            }
            
            self.tableViewCell.reloadData()
        
        })
        /*getAppointments(completion: { (json: JSON) -> () in
            
            self.jsonString = json
            
            let fetchedData = try JSONSerialization.jsonObject(with: json!, options: .mutableLeaves) as! NSArray
            
            for eachfetchedData in fetchedData {
                let entry = eachfetchedData as! [String : Any]
                let aptEntry = entry["doctor"] as! String
                let dateEntry = entry["date"] as! String
                self.apptList.append(AppointmentList(doctor: aptEntry, date: dateEntry))
                
            }
            
            print(self.apptList)
            
           /* for i in 0..<json.count {
                let name = json[i]["doctor"].string
                
                print(name as Any)
            }*/
            
            self.tableViewCell.reloadData()
        })*/
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    func getAppointments(completion: @escaping (NSArray) -> ()){
        
        let target = "http://54.193.47.19:8070/patients?patientName="
    
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        NSLog("DataManager| using loginURL: " + target)
    
        let url:URL = URL(string: target)!
        //let session = URLSession.shared
    
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        
        
        var fetchedData : NSArray?
        let task = session.dataTask(with: request as URLRequest) {
            (data, response, error) in
        
            if(error != nil){
                print(error ?? "ERROR")
            } else {
                
                do{
                     fetchedData = try ((JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as? NSArray))
                    
                    //print(fetchedData as Any)
                    /*for eachfetchedData in fetchedData {
                        let entry = eachfetchedData as! [String : Any]
                        let aptEntry = entry["doctor"] as! String
                        let dateEntry = entry["apptdate"] as! String
                        self.apptList.append(AppointmentList(doctor: aptEntry, date: dateEntry))
                    }*/
                    
                    
                } catch{
                    print("Error 2")
                }
            }
            /*guard let data = data, let _:URLResponse = response  , error == nil else {
                NSLog("DataManager| error :")
                print(response as Any)
                return
            }
             let json = JSON(data: data)*/

            completion(fetchedData!)
         }
        task.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
       return apptList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //AppointmentCell
        let cell = tableViewCell.dequeueReusableCell(withIdentifier: "AppointmentCell")
        cell?.textLabel?.text = apptList[indexPath.row].doctor
        cell?.detailTextLabel?.text = apptList[indexPath.row].date
        
        return cell!
    
    }

}


class AppointmentList{
    var doctor : String
    var date : String
    
    init(doctor: String, date: String) {
        self.doctor = doctor
        self.date = date
    }
}
