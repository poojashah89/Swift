//
//  NewViewController.swift
//  TipC
//
//  Created by Pooja Shah on 1/9/18.
//  Copyright © 2018 Pooja Shah. All rights reserved.
//

import Foundation
import UIKit

class NewViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var counterLabel: UILabel!
    
    
    @IBOutlet weak var tipView: CircularView!
    
    
    @IBAction func clickAction(_ button: PushButton) {
        if button.isAddButton {
            tipView.counter += 1
        } else {
            if tipView.counter > 0 {
                tipView.counter -= 1
            }
        }
        
        let label = String(tipView.counter) + " %"
        counterLabel.text = label
        
       
        self.tip = Int(tipView.counter)
        calculateTip()
    }
    
    @IBOutlet weak var billAmt: UITextField!
    
    @IBOutlet weak var totalAmt: UILabel!
    
    
    @IBOutlet weak var calculatedTip: UILabel!
   
    @IBOutlet weak var taxTotal: UILabel!
    
   
    @IBOutlet weak var segmentsControl: UISegmentedControl!
    
    @IBOutlet weak var saveHis: UIButton!
    
    
    @IBOutlet weak var viewTipsButton: UIButton!
    
    var tip: Int!;
    var taxVal : Float!;
    var totalVal : Float!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveHis.layer.cornerRadius = 8
        saveHis.layer.borderColor =  UIColor.white.cgColor
        saveHis.layer.borderWidth = 1.0;
        
        viewTipsButton.layer.cornerRadius = 8
        viewTipsButton.layer.borderColor =  UIColor.white.cgColor
        viewTipsButton.layer.borderWidth = 1.0;
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var savedtip = UserDefaults.standard.string(forKey: "savedtip")
        
        if(savedtip == nil) {
            savedtip = "5"
        }
        
        let taxAmt = UserDefaults.standard.string(forKey: "taxRate")
        if(taxAmt == nil) {
            self.taxVal = 9.0
        } else {
            self.taxVal = Float(taxAmt!)!
        }
        
        //sliderVal.value = Float(savedtip!)!
        //tipPercentage.text = savedtip! + " %"
        self.tip = Int(savedtip!)!
        
        tipView.counter = self.tip
        counterLabel.text = savedtip! + " %"
    }
    
    
    @IBAction func segmentIndexChanged(_ sender: Any) {
        
        switch segmentsControl.selectedSegmentIndex
        {
        case 0:
            calculateTip()
        case 1:
            afterRoundTotal()
        case 2:
            afterRoundTip()
        default:
            break
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        calculateTip()
        return true
    }
    
    
    @IBAction func saveAsTip(_ sender: Any) {
        performSegue(withIdentifier: "total", sender: totalVal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "total"{
            let saveHistory : SaveHistoryController = (segue.destination as? SaveHistoryController)!
            saveHistory.totalVal = self.totalVal
            saveHistory.tipVal = self.tip
            
        }
    }
    
    
    /*
     * Round Tip Function
     */
    func afterRoundTip() {
        guard let tipAmt = calculatedTip.text else {
            return
        }
        
        guard let enteredTip = Float(tipAmt) else {
            return
        }
        
        let tipC = enteredTip.rounded(.up)
        let str = String(tipC)
        calculatedTip.text = str
        
        guard let amount1 = billAmt.text else {
            return
        }
        
        guard let enteredAmt = Float(amount1) else {
            return
        }
        let ca = tipC + enteredAmt
        let rounded = String(ca)
        totalAmt.text = rounded
        
        self.totalVal = ((ca * self.taxVal) / 100) + ca
        let str1 = String(self.totalVal)
        self.taxTotal.text = "Total + Taxes = $ " + str1
        
        let saveHistory = UserDefaults.standard.bool(forKey: "isSetSave")
        
        if(saveHistory) {
            saveHis.isEnabled = true
        }
    }
    
    /*
     * Round total value
     */
    func afterRoundTotal(){
        guard let amount = totalAmt.text else {
            return
        }
        
        guard let enteredAmt = Float(amount) else {
            return
        }
        
        
        self.totalVal = ((enteredAmt * self.taxVal) / 100) + enteredAmt
        self.totalVal = totalVal.rounded(.up)
        
        let str = String(totalVal)
        let str1 = String(self.totalVal)
        
        self.totalAmt.text = str
        self.taxTotal.text = "Total + Taxes = $ " + str1
        
        let saveHistory = UserDefaults.standard.bool(forKey: "isSetSave")
        
        if(saveHistory) {
            saveHis.isEnabled = true
        }
    }
    
    /*
     * CALCULATE TIP
     */
    func calculateTip(){
        
        guard let amount = billAmt.text else {
            return
        }
        guard let enteredAmt = Float(amount) else {
            return
        }
        
        var ca = (enteredAmt * Float(self.tip)) / 100
        
        calculatedTip.text = String(ca)
        ca = ca +  enteredAmt   //totalamt
        
        self.totalVal = ((ca * self.taxVal) / 100) + ca
        
        let str = String(ca)
        let str1 = String(self.totalVal)
        
        totalAmt.text = str
        taxTotal.text = "Total + Taxes = $ " + str1
        
        let saveHistory = UserDefaults.standard.bool(forKey: "isSetSave")
        
        if(saveHistory) {
            saveHis.isEnabled = true
        }
    }
}
