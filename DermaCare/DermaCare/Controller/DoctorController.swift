//
//  DoctorController.swift
//  DermaCare
//
//  Created by Dermacare Team on 2/1/18.
//  Copyright © 2018 Dermacare. All rights reserved.
//

import Foundation

import UIKit

class DoctorController: UIViewController {
    
     var doctorDetails = DoctorModel()
    
    @IBOutlet weak var docImage: UIImageView!
    @IBOutlet weak var docName: UILabel!
    @IBOutlet weak var docAge: UILabel!
    @IBOutlet weak var docHours: UILabel!
    @IBOutlet weak var docFees: UILabel!
    @IBOutlet weak var docMedicalPractise: UILabel!
    @IBOutlet weak var docSpec: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadViews()
        //print(doctorDetails.docName)
    }
    
    func loadViews(){
        
        let img = UIImage(named: "doc.png")
        docImage.image = img
        docName.text = doctorDetails.docName
        docAge.text = "32 years"
        docHours.text = doctorDetails.hours
        docFees.text = "\(doctorDetails.fees)"
        docMedicalPractise.text = doctorDetails.experience
        docSpec.text = doctorDetails.specialization
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
