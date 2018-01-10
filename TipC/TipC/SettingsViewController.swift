//
//  SettingsViewController.swift
//  TipC
//
//  Created by Pooja Shah on 1/5/18.
//  Copyright © 2018 Pooja Shah. All rights reserved.
//

import Foundation

import UIKit

class SettingsViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var saveSwitch: UISwitch!
    @IBOutlet weak var favTip: UITextField!
    
    let defaults:UserDefaults = UserDefaults.standard
    
    @IBOutlet weak var styleSaveButton: UIButton!
    
    var ifSetTip: Bool = false
    var taxRateSave: Bool = false
    
    @IBOutlet weak var taxRate: UITextField!
    
    /*
     * Toggle history
     */
    @IBAction func saveHistoryAction(_ sender: Any) {
        
        if(saveSwitch.isSelected) {
            defaults.set(true, forKey: "isSetSave")
            defaults.synchronize()
        }
        else {
            defaults.set(false, forKey: "isSetSave")
            defaults.synchronize()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleSaveButton.layer.cornerRadius = 8
        styleSaveButton.layer.borderColor =  UIColor.white.cgColor
        styleSaveButton.layer.borderWidth = 1.0;
        
        // Do any additional setup after loading the view, typically from a nib.
    
        if(!ifSetTip) {
            defaults.setValue("5", forKey: "savedtip")
            defaults.synchronize()
            favTip.text = String(5)
        }
        
        if(!taxRateSave) {
            defaults.setValue("9", forKey: "taxRate")
            defaults.synchronize()
        }
         let saveHistory = UserDefaults.standard.bool(forKey: "isSetSave")
         saveSwitch.isOn = saveHistory
    
        let tax = UserDefaults.standard.string(forKey: "taxRate")
        self.taxRate.text = tax
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     * After clicking on Save fav tip
     */
    @IBAction func saveTip(_ sender: Any) {

        defaults.setValue(favTip.text, forKey: "savedtip")
        defaults.setValue(saveSwitch.isOn, forKey: "isSetSave")
        defaults.setValue(taxRate.text, forKey: "taxRate")
        
        defaults.synchronize()
        ifSetTip = true
        taxRateSave = true
        
        
        let alert = UIAlertController()
        alert.title = String(describing: "Status")
        
        let cancelAction = UIAlertAction(title: "OK",
                                         style: .cancel, handler: nil)
        
        alert.message = "Settings saved!"
        alert.addAction(cancelAction)
        self.present(alert, animated: true)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
   
        return true
    }
    
    
}

