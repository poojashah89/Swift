//
//  ViewController.swift
//  DataStorage
//
//  Created by Pooj on 9/6/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var authorName: UITextField!
    

    @IBOutlet weak var bookName: UITextField!
    
    
    @IBOutlet weak var bookDescription: UITextView!
    
    
    //File Manager
    let manager = FileManager.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        print(filePath)
        
        
        if manager.fileExists(atPath: filePath) {
            let dataArray =
                NSKeyedUnarchiver.unarchiveObject(withFile: filePath)
                    as! [String]
            authorName.text = dataArray[0]
            bookName.text = dataArray[1]
            bookDescription.text = dataArray[2]
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /**
     ** Save data as a file
     **
     **/
    @IBAction func saveAsFileStorage(_ sender: Any) {
        // get the documents folder url
        let documentDirectory = try! manager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        // create the destination url for the text file to be saved
        let fileURL = documentDirectory.appendingPathComponent("BookFileStorage.txt")
        
        print(fileURL.absoluteString)
        
        let name = authorName.text
        let bookname = bookName.text
        let desc = bookDescription.text
        
        
        var text = "Author Name: " + name!
        text = text + "\nBook Name: " + bookname!
        text = text + "\nBook Description: " + desc!
        do {
            // appending data to file
            try text.write(to: fileURL, atomically: false, encoding: .utf8)
           
            // create the alert
            let alert = UIAlertController(title: "File Saved", message: "Book Details saved", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        } catch {
            print("error writing to url:", fileURL, error)
        }
     
        
        
    }
    /**
     * Save data as an archieve button click
    **/
    @IBAction func saveAsArchieve(_ sender: Any) {
        //self.saveData()
        let authorArray = [authorName.text, bookName.text, bookDescription.text]
        NSKeyedArchiver.archiveRootObject(authorArray,
                                          toFile: filePath)
        
        // create the alert
        let alert = UIAlertController(title: "Archieve Saved", message: "Book Details Archieve", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        

        
    }

    
    var filePath: String {
        let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first
        return (url!.appendingPathComponent("BookArchieve").path)
    }
    
}

