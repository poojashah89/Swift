//
//  CommentsCell.swift
//  SmartStreet
//
//  Created by Pooja Shah on 10/27/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit

class CommentsCell:UITableViewCell {
    
    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var comment: UILabel!
    
    @IBOutlet var ratingStars: [UIButton]!
    
    public func setMessage(data: [String:Any]) {
        username.text = "\(data["name"]!)"
        comment.text = "\(data["comment"]!)"
        
        let ratingVal = "\(data["rating"]!)"
        let a:Int? = Int(ratingVal)
        
        // for stars
        for button in ratingStars{
            if button.tag <= a! {
                //select
                button.setTitle("★", for: .normal)
            }else{
                button.setTitle("☆", for: .normal)
            }
        }

    }
}
