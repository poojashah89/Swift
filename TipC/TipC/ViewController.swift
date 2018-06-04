//
//  ViewController.swift
//  TipC
//
//  Created by Pooja Shah on 1/5/18.
//  Copyright © 2018 Pooja Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var billAmt: UITextField!
    
    @IBOutlet weak var totalAmt: UILabel!
    
    @IBOutlet weak var calculatedTip: UILabel!
    
    var tip: Float!;
    var taxVal : Float!;
    var totalVal : Float!;
    
    @IBOutlet weak var taxTotal: UILabel!
    
    @IBOutlet weak var tipPercentage: UILabel!
    
    @IBOutlet weak var sliderVal: UISlider!
    
    @IBOutlet weak var saveHis: UIButton!
    
    /*
     * Slider changes value
     */
    @IBAction func sliderChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        self.tip = Float(currentValue)
        tipPercentage.text = String(self.tip) + " %"
        calculateTip()
    }
   
    
    @IBOutlet weak var segmentsControl: UISegmentedControl!
    
    /*
     * Menu option for round total,tip and no round
     */
    @IBAction func indexChanged(_ sender: Any) {
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
            saveHis.isHidden = false
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
            saveHis.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
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
        
        sliderVal.value = Float(savedtip!)!
        tipPercentage.text = savedtip! + " %"
        tip = Float(savedtip!)!
       
        calculateTip()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
        var ca = (enteredAmt * tip) / 100
        
        calculatedTip.text = String(ca)
        ca = ca +  enteredAmt   //totalamt
        
        self.totalVal = ((ca * self.taxVal) / 100) + ca
        
        let str = String(ca)
        let str1 = String(self.totalVal)
        
        totalAmt.text = str
        taxTotal.text = "Total + Taxes = $ " + str1
    
        let saveHistory = UserDefaults.standard.bool(forKey: "isSetSave")
     
        if(saveHistory) {
            saveHis.isHidden = false
        }
    }
    

    @IBAction func saveTipHistory(_ sender: Any) {
        performSegue(withIdentifier: "total", sender: totalVal)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "total"{
            let saveHistory : SaveHistoryController = (segue.destination as? SaveHistoryController)!
            saveHistory.totalVal = self.totalVal
            saveHistory.tipVal = Int(self.tip)
            
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
}

