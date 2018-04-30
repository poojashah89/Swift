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
        var docSpec: String?
        
        init(name: String, spec: String)
        {
            
            self.docName = name
            self.docSpec = spec
            
        }
    
}
