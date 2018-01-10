//
//  SaveHistoryController.swift
//  TipC
//
//  Created by Pooja Shah on 1/8/18.
//  Copyright © 2018 Pooja Shah. All rights reserved.
//

import Foundation
import UIKit
import SQLite3

class SaveHistoryController: UIViewController, UITextViewDelegate {

    let manager = FileManager.default
    var dbPath:String? = nil
    
    @IBOutlet weak var place: UITextField!
    
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var tip: UILabel!
    
    @IBOutlet weak var savebutton: UIButton!
    
    var totalVal : Float?
    var tipVal : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        savebutton.layer.cornerRadius = 8
        savebutton.layer.borderColor =  UIColor.white.cgColor
        savebutton.layer.borderWidth = 1.0;
        
        total.text = "$ " + String(totalVal!)
        tip.text = "% " + String(tipVal!)
        
        
        let documentDirectory = try! manager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        // create the destination url for the text file to be saved
        let fileURL = documentDirectory.appendingPathComponent("historydb.db")
    
        var db: OpaquePointer?
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if manager.fileExists(atPath: fileURL.path) {
            if sqlite3_exec(db, "create table if not exists history (place text, total text, tip text, timestamp text)", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
        } else {
            print("error creating database")
        }
    }
    
   
    @IBAction func saveHistory(_ sender: Any) {
        var db: OpaquePointer?
        
        let fileURL = databasePath()
        
        if manager.fileExists(atPath: fileURL) {
            
            if sqlite3_open(fileURL, &db) != SQLITE_OK {
                print("error opening database")
            }
            
            let date = NSDate()
            let formatter = DateFormatter();
            formatter.dateFormat = "yyyy-MM-dd";
            let defaultTimeZoneStr = formatter.string(from: date as Date);
            
            let timestamp = defaultTimeZoneStr
            
            let insertstmt = "insert into history (place, total, tip, timestamp) values ('" + place.text! + "','" + String(totalVal!) + "', '" +  String(tipVal!) + "', '" +  String(timestamp) + "')"
            
            let alert = UIAlertController()
            alert.title = String(describing: "Status")
           
            let cancelAction = UIAlertAction(title: "OK",
                                             style: .cancel, handler: nil)
            
           
            if sqlite3_exec(db, insertstmt, nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error inserting data \(errmsg)")
                alert.message = "Your tip could not be saved!"
                alert.addAction(cancelAction)
                self.present(alert, animated: true)
                return
            }
            alert.message = "Your tip is saved!"
            alert.addAction(cancelAction)
            self.present(alert, animated: true)
        }
    }
    
    func databasePath() -> String
    {
        
        let documentDirectory = try! manager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        // create the destination url for the text file to be saved
        let fileURL = documentDirectory.appendingPathComponent("historydb.db")
        
        if manager.fileExists(atPath: fileURL.path) {
            return fileURL.path as String
        }
        return fileURL.path as String
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        
        return true
    }
}
