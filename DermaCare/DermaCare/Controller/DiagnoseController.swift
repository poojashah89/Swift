//
//  DiagnoseController.swift
//  DermaCare
//
//  Created by Pooj on 2/1/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class DiagnoseController: UIViewController,UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    var chatData = [[String:Any]]()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var textInput: UITextField!
    @IBOutlet var bottomBarConstraint: NSLayoutConstraint!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundView = UIImageView(image: UIImage(named: "chat"))
        let message = "hi"
        ChatModel.getChatString(message: message) { (json) in
            print(json.message!)
            self.displayMessage(message: json.message!, from: "server", time: json.time!)
        }
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
    }
    override func viewWillAppear(_ animated: Bool) {
        //tableView.separatorStyle = .none
    }
    
    @IBAction func goToDashboard(_ sender: UIBarButtonItem) {
        //navigationController?.popToRootViewController(animated: true)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.dismiss(animated: false, completion: {
            self.navigationController?.popToRootViewController(animated: true)
            if let tabBarController = appDelegate.window!.rootViewController as? RootTabController {
                tabBarController.selectedIndex = 1
            }
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMessage(_ sender: AnyObject) {
        let value = textInput.text
        if ((value?.characters.count)! > 0) {
            let date = Date()
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: date)
            let minute = calendar.component(.minute, from: date)
            let time = String(format: "%d : %d",hour,minute)
            displayMessage(message: value!, from: "me", time:time)
            textInput.text = ""
            
            ChatModel.getChatString(message: value!) { (json) in
                print(json.message!)
                self.displayMessage(message: json.message!, from: "server", time: json.time!)
            }
        }
    }
    
    func displayMessage(message:String, from:String, time:String) {
        chatData.append(["time":time, "message":message, "from":from])
         DispatchQueue.main.async {
            self.tableView.reloadData()
            //self.tableView.scrollToLastRow(animated:animated)
        }
    }
  
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        sendMessage(self)
        return false
    }
    
    func keyboardWillShow(sender: NSNotification) {
        let info = sender.userInfo!
        let keyboardSize = (info[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
        
        bottomBarConstraint.constant = keyboardSize - 1.0
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    func keyboardWillHide(sender: NSNotification) {
        bottomBarConstraint.constant = -1
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatData.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let messageData = chatData[indexPath.row]
        var cell:ChatMessageViewCell? = nil
        if ( (messageData["from"] as? String) != "me" ) {
            cell = tableView.dequeueReusableCell(withIdentifier: "serverChatViewCell") as? ChatMessageViewCell
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "myChatViewCell") as? ChatMessageViewCell
        }
        
        cell?.setMessage(data:messageData)
        
        return cell!
    }
    
    
}


