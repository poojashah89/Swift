//
//  ViewController.swift
//  Contacts
//
//  Created by Pooj on 9/23/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import UIKit

import SQLite3

class ViewController: UIViewController {
    let manager = FileManager.default
    var dbPath:String? = nil
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var address: UITextView!
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var phoneno: UITextField!
    @IBOutlet weak var location: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let documentDirectory = try! manager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        // create the destination url for the text file to be saved
        let fileURL = documentDirectory.appendingPathComponent("contactsdb.db")
        
        
        //let fileURL = databasePath()
        print("db path : " + fileURL.path)
        
        var db: OpaquePointer?
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if manager.fileExists(atPath: fileURL.path) {
            if sqlite3_exec(db, "create table if not exists contact (name text, address text, location text, phoneno text, email text)", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
        } else {
            print("error creating database")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func save(_ sender: Any) {
        
        var db: OpaquePointer?
        
        let fileURL = databasePath()
        print("db path : " + fileURL)
        
        if manager.fileExists(atPath: fileURL) {
            
            if sqlite3_open(fileURL, &db) != SQLITE_OK {
                print("error opening database")
            }
            
            let insertstmt = "insert into contact (name, address, location, phoneno, email) values ('" + name.text! + "','" + address.text! + "', '" + location.text! + "', '" + phoneno.text! + "', '" + email.text! + "')"
            if sqlite3_exec(db, insertstmt, nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error inserting data \(errmsg)")
            }
        }
    }
    
    
    @IBAction func clearText(_ sender: Any) {
        name.text=""
        address.text = ""
        email.text=""
        phoneno.text=""
        location.text=""
    }
    
    func databasePath() -> String
    {
        
        let documentDirectory = try! manager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        // create the destination url for the text file to be saved
        let fileURL = documentDirectory.appendingPathComponent("contactsdb.db")
        
        if manager.fileExists(atPath: fileURL.path) {
            return fileURL.path as String
        }
        return fileURL.path as String
    }
    
}

