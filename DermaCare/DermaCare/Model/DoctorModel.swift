//
//  DoctorModel.swift
//  DermaCare
//
//  Created by sindhya on 4/30/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import UIKit

class DoctorModel: NSObject {
    
    var docName: String?
    var specialization: String?
    var experience: String?
    var hours: String?
    var fees: String?
    var id: String?
    
    override init()
    {
        
    }
    
    init(id: String, name: String, spec: String,exp: String,hours:String,fees:String)
        {
            self.docName = name
            self.specialization = spec
            self.hours = hours
            self.experience = exp
            self.fees = fees
            self.id = id
        }
    
}
