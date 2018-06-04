//
//  HistoryViewController.swift
//  RasberyPiLock
//
//  Created by chalapati rao avadhanula venkata on 11/29/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var historytable: UITableView!
    
    let userlist = ["User1"]
    var nameArray = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell") as! customtableview
        //cell.historyview.layer.cornerRadius = cell.historyview.frame.height/3
        //cell.historyuser.text = userlist[indexPath.row]
        //cell.historyimage.image = UIImage(named: userlist[indexPath.row])
        
        if(indexPath.count > 0) {
            cell.historyuser.text = nameArray[indexPath.row]
            let string_url = "http://50.112.13.135:5000/history/" + nameArray[indexPath.row] + ".jpg";
            print(string_url)
            let url = URL(string:string_url)
            let data = try? Data(contentsOf: url!)
            cell.historyimage.image = UIImage(data: data!)
        } else {
            cell.contactsname.text = "No contacts detected"
        }
        cell.historyimage.layer.cornerRadius = cell.historyview.frame.height/4
        
        return cell
    }
    
    override func viewDidLoad() {
        historytable.delegate = self
        historytable.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fetchHistory()
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
    
    func fetchHistory() {
        //the json file url
        let URL_LIST = "http://50.112.13.135:5000/historylist";
        
        //A string array to save all the names
        let url = NSURL(string: URL_LIST)
        print("fetch history")
        //fetching the data from the url
        URLSession.shared.dataTask(with: (url as? URL)!, completionHandler: {(data, response, error) -> Void in
              print("fetch history")
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
                                var index = (name as AnyObject).range(of: ".", options: .backwards).lowerBound
                                //adding the name to the array
                                self.nameArray.append(((name as AnyObject).substring(to: index) as? String)!)
                            }
                        }
                    }
                }
                OperationQueue.main.addOperation({
                    //calling another function after fetching the json
                    //it will show the names to label
                    
                    self.historytable.reloadData()
                    self.historytable.isHidden = false
                    self.showNames()
                })
            }
        }).resume()
    }
    
}
