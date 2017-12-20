//
//  ContactsViewController.swift
//  RasberyPiLock
//
//  Created by chalapati rao avadhanula venkata on 11/29/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import Foundation
import UIKit

class ContactsViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
    var nameArray = [String]()
    
    @IBOutlet weak var contactstable: UITableView!
    var visitorlist = ["User1", "User2", "User3", "User4"]
    var imagelist:NSArray = ["User1", "User2", "User3", "User4"]
    var newcontact = String()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell") as! customtableview
       cell.contactsview.layer.cornerRadius = cell.contactsview.frame.height/3
       cell.contactsname.text = nameArray[indexPath.row]
      // cell.contactsimage.image = UIImage(named: visitorlist[indexPath.row])
        
        
        let string_url = "http://50.112.13.135:5000/images/" + nameArray[indexPath.row] + ".jpg";
        let url = URL(string:string_url)
        let data = try? Data(contentsOf: url!)
        cell.contactsimage.image = UIImage(data: data!)
        
       cell.contactsimage.layer.cornerRadius = cell.contactsview.frame.height/4
       return cell
    }
    
    override func viewDidLoad() {
        contactstable.delegate = self
        contactstable.dataSource = self
        super.viewDidLoad()
        //sneha   visitorlist.append(newcontact)
        
       appendVisitors()
    }
    
    func showNames(){
        //looing through all the elements of the array
        for name in nameArray{
            
            //appending the names to label
            //  labelTest.text = labelTest.text! + name + "\n";
            print(name)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func appendVisitors() {
        //the json file url
        let URL_LIST = "http://50.112.13.135:5000/list";
        
        //A string array to save all the names
        let url = NSURL(string: URL_LIST)
        
        //fetching the data from the url
        URLSession.shared.dataTask(with: (url as URL?)!, completionHandler: {(data, response, error) -> Void in
            
            if let jsonObj = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? NSDictionary {
                
                //printing the json in console
                print(jsonObj!.value(forKey: "name")!)
                
                //getting the avengers tag array from json and converting it to NSArray
                if let heroeArray = jsonObj!.value(forKey: "children") as? NSArray {
                    //looping through all the elements
                    for heroe in heroeArray{
                        //converting the element to a dictionary
                        if let heroeDict = heroe as? NSDictionary {
                            //getting the name from the dictionary
                            if let name = heroeDict.value(forKey: "name") {
                                let index = (name as AnyObject).range(of: ".", options: .backwards).lowerBound
                                //adding the name to the array
                                self.nameArray.append(((name as AnyObject).substring(to: index) as? String)!)
                            }
                        }
                    }
                }
                OperationQueue.main.addOperation({
                    //calling another function after fetching the json
                    //it will show the names to label
                    
                    self.contactstable.reloadData()
                    self.contactstable.isHidden = false
                    self.showNames()
                })
            }
        }).resume()
    }
    
    
}
