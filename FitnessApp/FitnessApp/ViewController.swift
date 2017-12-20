//
//  ViewController.swift
//  FitnessApp
//
//  Created by Pooj on 10/8/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    
    @IBOutlet weak var noofsteps: UILabel!
    
    @IBOutlet weak var avgpace: UILabel!
    
    @IBOutlet weak var currentpace: UILabel!
    
    
    @IBOutlet weak var totaldistance: UILabel!
    
    @IBOutlet weak var floorsascended: UILabel!
    
    
    @IBOutlet weak var floorsdescended: UILabel!
    //the pedometer
    var pedometer = CMPedometer()
    
    // timers
    var timer = Timer()
    var timerInterval = 1.0
    var timeElapsed:TimeInterval = 1.0
    var numberOfSteps:Int! = nil
   
    var distance:Double! = nil
    var averagePace:Double! = nil
    var pace:Double! = nil
    
    var floorsascendedval:Int! = nil
    var floorsdescendedval:Int! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func beginWorkout(_ sender: Any) {
        //Start the pedometer
        pedometer = CMPedometer()
         startTimer() 
        pedometer.startUpdates(from: Date(), withHandler: { (pedometerData, error) in
            if let pedData = pedometerData{
                self.numberOfSteps = Int(truncating: pedData.numberOfSteps)
                
                if let distance = pedData.distance{
                    self.distance = Double(truncating: distance)
                    
                }
                if let averageActivePace = pedData.averageActivePace {
                    self.averagePace = Double(truncating: averageActivePace)
                    
                }
                if let currentPace = pedData.currentPace {
                    self.pace = Double(truncating: currentPace)
                    
                }
                if let ascended = pedData.floorsAscended {
                    self.floorsascendedval = Int(truncating: ascended)
                }
                if let descended = pedData.floorsDescended {
                    self.floorsdescendedval = Int(truncating: descended)
                }
                
            } else {
                self.numberOfSteps = nil
            }
        })
    }
    
    
    @IBAction func stopWorkout(_ sender: Any) {
        pedometer.stopUpdates()
    }
    
    
    func startTimer(){
        if timer.isValid { timer.invalidate() }
        timer = Timer.scheduledTimer(timeInterval: timerInterval,target: self,selector: #selector(timerAction(timer:)) ,userInfo: nil,repeats: true)
    }
    
    func stopTimer(){
        timer.invalidate()
        displayPedometerData()
    }
    
    @objc func timerAction(timer:Timer){
        displayPedometerData()
    }
    
    // display the updated data
    func displayPedometerData(){
        timeElapsed += 1.0
        //Number of steps
        if let numberOfSteps = self.numberOfSteps{
            noofsteps.text = String(format:"Steps: %i",numberOfSteps)
        }
        
        //distance
        if let distance = self.distance{
            totaldistance.text = String(format:"Distance: %02.02f meters,\n %02.02f mi",distance, miles(meters: distance))
        } else {
            totaldistance.text = "Distance: N/A"
        }
        
        //average pace
        if let averagePace = self.averagePace{
            avgpace.text = paceString(title: "Avg Pace", pace: averagePace)
        } else {
            avgpace.text =  paceString(title: "Avg Comp Pace", pace: computedAvgPace())
        }
        
        //pace
        if let pace = self.pace {
            currentpace.text = paceString(title: "Pace:", pace: pace)
        } else {
            currentpace.text = "Pace: N/A "
            currentpace.text =  paceString(title: "Avg Comp Pace", pace: computedAvgPace())
        }
        
        if let fa = self.floorsascendedval {
            floorsascended.text = String(fa)
           
        }
        
        //pace
        if let fd = self.floorsascendedval {
            floorsdescended.text = String(fd)
             
        }
    }
    
    //MARK: - Display and time format functions
    
    // convert seconds to hh:mm:ss as a string
    func timeIntervalFormat(interval:TimeInterval)-> String{
        var seconds = Int(interval + 0.5) //round up seconds
        let hours = seconds / 3600
        let minutes = (seconds / 60) % 60
        seconds = seconds % 60
        return String(format:"%02i:%02i:%02i",hours,minutes,seconds)
    }
    
    func paceString(title:String,pace:Double) -> String{
        var minPerMile = 0.0
        let factor = 26.8224 //conversion factor
        if pace != 0 {
            minPerMile = factor / pace
        }
        let minutes = Int(minPerMile)
        let seconds = Int(minPerMile * 60) % 60
        return String(format: "%@: %02.2f m/s \n\t\t %02i:%02i min/mi",title,pace,minutes,seconds)
    }
    
    func computedAvgPace()-> Double {
        if let distance = self.distance{
            pace = distance / timeElapsed
            return pace
        } else {
            return 0.0
        }
    }
    
    func miles(meters:Double)-> Double{
        let mile = 0.000621371192
        return meters * mile
    }
    
}

