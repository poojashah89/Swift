//
//  ViewController.swift
//  TipCalculator
//
//  Created by Pooja Shah on 8/22/17.
//  Copyright © 2017 Pooja Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var tipPicker: UIPickerView!
    
    @IBOutlet weak var calculatedTip: UILabel!
    
    @IBOutlet weak var enterAmount: UITextField!     
    @IBOutlet weak var totalAmount: UILabel!
    
    var type = ["10", "15" , "20", "25"];
    var tip: String!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign the values to picker
        tipPicker.dataSource = self;
        tipPicker.delegate = self;
        
        calculatedTip.text = ""
        
        if(tip == nil) {
            tip = type[0]
        }
        print(tip)
       tipPicker.selectRow(type.index(of: tip)!, inComponent: 0, animated: true)
            
        enterAmount.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: .editingChanged)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     * Change in textfield
    */
    func textFieldDidChange(_ enterAmount: UITextField){
        
       calculateTip()
    }
    
    /*
     * Pick Tip value
    */
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return type.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return type[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tip = type[row]
        calculateTip()
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    /*
     * CALCULATE TIP
     */
    func calculateTip(){
        guard let text1 = enterAmount.text else {
            return
        }
        
        guard let text2 = tip else {
            return
        }
        
        guard let enteredAmt = Double(text1) else {
            return
        }
        
        guard let tipAmt = Double(text2) else {
            return
        }
        
        var ca = (enteredAmt * tipAmt) / 100
        
        calculatedTip.text = String(ca)
        ca = ca +  enteredAmt
        let str = String(ca)
        
        totalAmount.text = str
    }
    
    
    /*
    * CLICK ON ROUND TIP
    */
    @IBAction func clickRoundTip(_ sender: Any) {
        
        guard let text1 = enterAmount.text else {
            return
        }
        
        guard let text2 = tip else {
            return
        }
        
        guard let enteredAmt = Double(text1) else {
            return
        }
        
        guard let tipAmt = Int(text2) else {
            return
        }
        
        
        var ca = (enteredAmt * Double(tipAmt)) / 100
        ca = ca.rounded(.up)
        
        calculatedTip.text = String(ca)
        
        
        ca = ca +  enteredAmt
        let str = String(ca)
        
        totalAmount.text = str

    }
    
    /*
     * click on Round total
     */
    @IBAction func clickRoundTotal(_ sender: Any) {
        print("in Total")
        guard let text1 = enterAmount.text else {
            return
        }
        
        guard let text2 = tip else {
            return
        }
        
        guard let enteredAmt = Double(text1) else {
            return
        }
        
        guard let tipAmt = Double(text2) else {
            return
        }
        
        var ca = (enteredAmt * tipAmt) / 100
        calculatedTip.text = String(ca)
        
        ca = ca +  enteredAmt
        let str = String(ca.rounded(.up))
        
        totalAmount.text = str
        
    }
    
}


