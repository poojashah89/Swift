//
//  DoctorAppointmentModel.swift
//  DermaCare
//
//  Created by sindhya on 5/3/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import UIKit

class DoctorAppointmentModel: NSObject {

    var patientName: String?
    var date: String?
    
    override init()
    {
        
    }
    
    init(patName: String, date: String)
    {
        self.patientName = patName
        self.date = date
    }
}
