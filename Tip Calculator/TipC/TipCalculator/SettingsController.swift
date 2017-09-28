//
//  SettingsController.swift
//  TipCalculator
//
//  Created by Pooja Shah on 8/24/17.
//  Copyright © 2017 Pooja Shah. All rights reserved.
//

import UIKit

class SettingsController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tablesView: UITableView!
    
    var tips = ["10", "15", "20", "25"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tablesView.delegate = self
        tablesView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
    * Load setting
    **/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tips.count
    }
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = tips[indexPath.row]
        return cell
    }
    
    /**
     * Data Transfer
    **/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "onesegue", sender: tips[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segue = segue.destination as!  ViewController
        segue.tip = sender as! String
    }
    
}
