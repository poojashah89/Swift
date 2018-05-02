//
//  AppointmentModel.swift
//  DermaCare
//
//  Created by Pooj on 5/1/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation

import UIKit

class AppointmentModel: NSObject {
    
    var docName: String?
    var date: String?
    
    override init()
    {
        
    }
    
    init(docName: String, date: String)
    {
        self.docName = docName
        self.date = date
    }
    
}
