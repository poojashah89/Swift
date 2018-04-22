//
//  DiagnoseController.swift
//  DermaCare
//
//  Created by Pooj on 2/1/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation
import UIKit

class DiagnoseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    @IBAction func goToDashboard(_ sender: UIBarButtonItem) {
        //navigationController?.popToRootViewController(animated: true)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.dismiss(animated: false, completion: {
            self.navigationController?.popToRootViewController(animated: true)
            if let tabBarController = appDelegate.window!.rootViewController as? RootTabController {
                tabBarController.selectedIndex = 1
            }
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


