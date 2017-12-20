//
//  NotesController.swift
//  iCloudAssignment
//
//  Created by Pooj on 9/26/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation


import UIKit
import CloudKit

class NotesController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var arr: Array<CKRecord> = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        loadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let noterecord: CKRecord = arr[(indexPath as IndexPath).row]
        
        let desc = noterecord.value(forKey: "description") as? String
        let reason = noterecord.value(forKey: "reason") as? String
        
        cell.textLabel?.text = reason! + " : " + desc! 
        return cell;
    }
    
    func loadData() {
        arr = Array<CKRecord>()
        let publicdb = CKContainer.default().publicCloudDatabase
        let pred = NSPredicate(value: true)
        
        let query = CKQuery(recordType: "CustomerCallDetails", predicate: pred)
        query.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false )]
        
        publicdb.perform(query, inZoneWith: nil) { (results, error) in
           
            if error != nil {
                print("error " + error.debugDescription)
            } else{
                for result in results! {
                    self.arr.append(result)
                }
                OperationQueue.main.addOperation({ () -> Void in
                    self.tableView.reloadData()
                    self.tableView.isHidden = false
                })
            }
        }
    }
    
}

