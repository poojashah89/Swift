//
//  LockDoorIntent.swift
//  Intent Handler
//
//  Created by Pooja Shah on 11/21/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import Foundation
import Intents

class LockDoorIntent: NSObject, INStartWorkoutIntentHandling, INEndWorkoutIntentHandling  {
    
    public func handle(intent: INStartWorkoutIntent, completion: @escaping (INStartWorkoutIntentResponse) -> Void) {
        //let userActivity: NSUserActivity? = nil
        /*guard (intent.workoutName?.spokenPhrase) != nil else {
            completion(INStartWorkoutIntentResponse(code: .failureNoMatchingWorkout, userActivity: userActivity))
            
            return
        }
         print("hi")
        completion(INStartWorkoutIntentResponse(code: .handleInApp, userActivity: userActivity))
*/
        
        let userActivity = NSUserActivity(activityType: String(describing: INStartWorkoutIntent.self))
        let response = INStartWorkoutIntentResponse(code: .ready,
                                                         userActivity: userActivity)
        
       lockDoor()
        completion(response)
    }
    
    func handle(intent: INEndWorkoutIntent, completion: @escaping (INEndWorkoutIntentResponse) -> Void) {
    }
    
    func lockDoor() {
        
        let req = NSMutableURLRequest(url: NSURL(string:"http://192.168.0.12:5000")! as URL)
        req.httpMethod = "GET"
        req.httpBody = "key=\"value\"".data(using: String.Encoding.utf8)
        URLSession.shared.dataTask(with: req as URLRequest) { data, response, error in
            if error != nil {
                // Error
                print(error?.localizedDescription ?? "default error ")
            } else {
                // Successfull
                print(String(data: data!, encoding: String.Encoding.utf8) ?? "default error ")
            }
            }.resume()
        
    }
}

