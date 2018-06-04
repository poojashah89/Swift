//
//  IntentHandler.swift
//  Intent Handler
//
//  Created by Pooja Shah on 11/21/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import Intents

// As an example, this class is set up to handle Message intents.
// You will want to replace this or add other intents as appropriate.
// The intents you wish to handle must be declared in the extension's Info.plist.

// You can test your example integration by saying things to Siri like:
// "Send a message using <myApp>"
// "<myApp> John saying hello"
// "Search for messages in <myApp>"

class IntentHandler: INExtension{
    
    
    override func handler(for intent: INIntent) -> Any? {
        
        if intent is INStartWorkoutIntent {
            
            return LockDoorIntent()
        }
        
        return self
    }
    
}

