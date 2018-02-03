//
//  AddCommentController.swift
//  SmartStreet
//
//  Created by Pooj on 9/20/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit

class AddCommentController : UIViewController, UITextFieldDelegate{
    
    var tag = 0
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var commentText: UITextView!
    
  
    @IBOutlet var buttons: [UIButton]!
    
  
    @IBAction func tap(_ sender: UIButton) {
        
        tag = sender.tag + 1
        for button in buttons{
            if button.tag <= tag {
                //select
                button.setTitle("★", for: .normal)
            }else{
                button.setTitle("☆", for: .normal)
            }
        }

    }
    
    @IBAction func add(_ sender: Any) {
       /* if(commentText.text != "") {
            list.append(name.text! + "    ★★★★☆    " + commentText.text!)
        }
        */
       let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        let target = "http://54.213.146.48:8070/comments"
        NSLog("DataManager| using loginURL: " + target)
        
        let url:URL = URL(string: target)!
        //let session = URLSession.shared
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        
       print("tag \(tag)")
        let dict = ["name": self.name.text, "age":"5", "height":"5", "weight":"self.weight", "bloodType":"self.bloodType", "sex":"self.sex", "doctor":self.commentText.text ?? "error", "apptdate":tag] as [String: Any]
        
        
        
        let postString = try? JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
        
        print(postString as Any)
        request.httpBody = postString //postString.data(using: String.Encoding.utf8)
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        let task = session.dataTask(with: request as URLRequest) {
            (data, response, error) in
            
            if error != nil {
                print("error \(String(describing: error))")
                return
            }
            
            print("Response \(String(describing: response))")
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("Response data \(String(describing: responseString))")
            
            let alert = UIAlertController()
            
            alert.title = String(describing: "Success!")
            alert.message = "Your rating is submitted"
            let cancelAction = UIAlertAction(title: "OK",
                                             style: .cancel, handler: nil)
            
            alert.addAction(cancelAction)
            self.present(alert, animated: true)
        }
        task.resume()
        
        
        //NotificationCenter.default.post(name: NSNotification.Name(rawValue: "refresh"), object: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    
    
    @IBAction func backToView(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)

    }

}
