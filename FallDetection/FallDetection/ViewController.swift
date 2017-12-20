//
//  ViewController.swift
//  FallDetection
//
//  Created by Pooj on 10/20/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    let motionManager = CMMotionManager()
    var timer: Timer!
    
    @IBOutlet weak var status: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func startDetection(_ sender: Any) {
        //motionManager.startGyroUpdates()
        //motionManager.startMagnetometerUpdates()
        //motionManager.startDeviceMotionUpdates()
        
        status.text = "Fall Detection ON"
      
        motionManager.accelerometerUpdateInterval = 0.2
        motionManager.startAccelerometerUpdates(to: OperationQueue.current!){ (data,error) in
            if let accelData = data{
                
              let value = sqrt((accelData.acceleration.x * accelData.acceleration.x) +
                    (accelData.acceleration.y * accelData.acceleration.y) +
                    (accelData.acceleration.z * accelData.acceleration.z))
                print(value)
                if (value > 3)
                {
                    // create the alert
                    let alert = UIAlertController(title: "ALERT", message: "Fall Detected!", preferredStyle: UIAlertControllerStyle.alert)
                    
                    alert.addAction(UIAlertAction(title: "ALERT | Call 911", style: UIAlertActionStyle.default, handler: nil))
                    
                    self.present(alert, animated: true, completion: nil)
                    
                }
                
            }
            
            
        }
        
    }
    
    
    @IBAction func stopDetection(_ sender: Any) {
         motionManager.stopAccelerometerUpdates()
        
        status.text = "Fall Detection OFF"

    }
    
    
}

