//
//  ContactController.swift
//  Contacts
//
//  Created by Pooj on 9/23/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation

import UIKit
import SQLite3

class ContactController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let manager = FileManager.default
    var list = [String]()

    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        let documentDirectory = try! manager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        // create the destination url for the text file to be saved
        let fileURL = documentDirectory.appendingPathComponent("contactsdb.db")
        //let fileURL = databasePath()
        print("db path from contacts: " + fileURL.path)
        
        var db: OpaquePointer?
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if manager.fileExists(atPath: fileURL.path) {
            
            if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
                print("error opening database")
            }
            var queryStatement: OpaquePointer? = nil
            let stmt = "select * from contact"
            
            if sqlite3_prepare_v2(db, stmt, -1, &queryStatement, nil) == SQLITE_OK {
                while sqlite3_step(queryStatement) == SQLITE_ROW {
                    let queryResultCol1 = sqlite3_column_text(queryStatement, 0)
                    let name = String(cString: queryResultCol1!)
                    
                    let queryResultCol2 = sqlite3_column_text(queryStatement, 3)
                    let phone = String(cString: queryResultCol2!)
                    
                    print("Query Result:")
                    print("\(name)" + "\(phone)")
                    list.append(" " + name + "     " + phone)
                }
            } else{
                print("error retrieving data")
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return cell;
    }
    
}
