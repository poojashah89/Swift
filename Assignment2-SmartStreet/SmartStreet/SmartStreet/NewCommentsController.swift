//
//  NewCommentsController.swift
//  SmartStreet
//
//  Created by Pooj on 9/20/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON


class NewCommentsController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
     var chatData = [[String:Any]]()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var avgrating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
        loadComments()
        
        let refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
        tableView.addSubview(refreshControl)
         refreshControl.endRefreshing()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            
            if(self.chatData.count > 0) {
                var total = [Int]()
                // for stars
                for data in self.chatData{
                    let ratingVal = "\(data["rating"]!)"
                    let val:Int? = Int(ratingVal)
                    total.append(val!)
                }
                let totalVal = total.reduce(0, +)
                let avgArrayValue = totalVal / total.count
                self.avgrating.text = "Overall Rating \(avgArrayValue)★"
            }
        })
    }
   
    func refresh(_ sender: Any) {
         loadComments()
        DispatchQueue.main.async {
            self.tableView.reloadData()
            
        }
       
    }
    
    func refreshTable(notification: NSNotification) {
        
        print("Received Notification")
        DispatchQueue.main.async {
            self.tableView.reloadData()
            //self.chatTableView.scrollToLastRow(animated:animated)
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return chatData.count
    }
    
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
       
        
        let messageData = chatData[indexPath.row]
         
        
        var cell:CommentsCell? = nil
        cell = tableView.dequeueReusableCell(withIdentifier: "CommentsCell") as? CommentsCell
        cell?.setMessage(data:messageData)
        return cell!;
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    @IBAction func backToView(_ sender: Any) {
     dismiss(animated: true, completion: nil)
    }
    
    func loadComments() {
        let urlString = URL(string: "http://54.213.146.48:8070/comments")
      
        let session = URLSession.shared // or let session = URLSession(configuration: URLSessionConfiguration.default)
        if let usableUrl = urlString {
            let task = session.dataTask(with: usableUrl, completionHandler: { (data, response, error) in
                if let data = data {
                    if let stringData = String(data: data, encoding: String.Encoding.utf8) {
                      
                        if let data = stringData.data(using: .utf8) {
                            if let json = try? JSON(data: data) {
                                for item in json.arrayValue {
                                    print(item["name"].stringValue)
                                    let username=item["name"].stringValue
                                    let comment = item["doctor"].stringValue
                                     let rating = item["apptdate"].stringValue
                                    
                                    self.chatData.append(["name":username, "comment":comment, "rating":rating])
                                }
                            }
                        }
                    }
                }
            })
            task.resume()
        }
      
    }
    
}
