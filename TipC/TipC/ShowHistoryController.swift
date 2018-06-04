//
//  ShowHistoryController.swift
//  TipC
//
//  Created by Pooja Shah on 1/8/18.
//  Copyright © 2018 Pooja Shah. All rights reserved.
//

import UIKit
import SQLite3

class ShowHistoryControllers: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let manager = FileManager.default
    var historyObjects = [HistoryObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let documentDirectory = try! manager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        // create the destination url for the text file to be saved
        let fileURL = documentDirectory.appendingPathComponent("historydb.db")
        //let fileURL = databasePath()
       
        var db: OpaquePointer?
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if manager.fileExists(atPath: fileURL.path) {
            
            if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
                print("error opening database")
            }
            var queryStatement: OpaquePointer? = nil
            let stmt = "select * from history"
            
            if sqlite3_prepare_v2(db, stmt, -1, &queryStatement, nil) == SQLITE_OK {
                var counter = 1;
                while sqlite3_step(queryStatement) == SQLITE_ROW {
                    let queryResultCol1 = sqlite3_column_text(queryStatement, 0)
                    let place = String(cString: queryResultCol1!)
                    
                    let queryResultCol2 = sqlite3_column_text(queryStatement, 1)
                    let tip = String(cString: queryResultCol2!)
                  
                    let queryResultCol3 = sqlite3_column_text(queryStatement, 2)
                    let total = String(cString: queryResultCol3!)
                  
                    let queryResultCol4 = sqlite3_column_text(queryStatement, 3)
                    let timestamp = String(cString: queryResultCol4!)
                    
                    print("counter \(counter)")
                    guard let hisObj = HistoryObject(counter: counter, place: place, tip:tip, total: total, timestamp: timestamp) else {
                        fatalError("Unable to instantiate ")
                    }
                    historyObjects.append(hisObj)
                    counter = counter + 1
                }
            } else{
                print("error retrieving data")
            }
    
            self.tableView.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return historyObjects.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "HistoryCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HistoryCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        
        
        let historyObject = historyObjects[indexPath.row]
        
        cell.place.text = historyObject.place
        cell.timestamp.text = historyObject.timestamp
        cell.tip.text = historyObject.tip
        cell.total.text = historyObject.total
        cell.counter.text = historyObject.counter
        return cell
    }
    
    
    
}
