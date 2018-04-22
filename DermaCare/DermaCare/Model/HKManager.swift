//
//  HKManager.swift
//  DermaCare
//
//  Created by Pooj on 2/14/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import UIKit
import HealthKit
import Firebase

class HKManager {

    let healthKitStore:HKHealthStore = HKHealthStore()
    
    //var height : String!, weight:String!, bloodType:String!, birthDate: String!, sex:String!, heartRate:String!, respRate:String!, age:String!, date:String!, patient:String!
   
    weak var delegate: HKManagerDelegate?
    
    var healthTree: DatabaseReference?
    
    private var databaseHandle: DatabaseHandle!
    
    var user: User?
    
    var ifHealthSyc = false
    
    func requestData(user: User) {
        
        // the data was received and parsed to String
        self.user = user
        self.healthTree = Database.database().reference(withPath: "userlist").child(user.uid).child("health")
        
        if HKHealthStore.isHealthDataAvailable() {
            authorizeHealthKit() {
                success, error in
                if !success {
                    print( "ERROR in permission")
                    return
                }
                let healthKitTypes: Set = [
                    HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!,
                    ]
                
                self.healthKitStore.requestAuthorization(toShare: healthKitTypes,
                                                         read: healthKitTypes) { _, _ in }
                }
            
                DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
                    
                    //1. Get Weight
                    self.getHeightFromHealth()
                    
                    //2. Get Height
                    self.getWeightFromHealth()
                    
                    //3. Get Blood Type, Gender, Age, DOB
                    self.readProfile()
                    
                    self.getHeartData()
                    self.ifHealthSyc = true
                })
            
            } else {
            print("No Health Data")
        }
        
        delegate?.didRecieveDataUpdate(data: self)
        startObservingDatabase(user: user)
    }
    /*
     Generate the query to get Quantity for Weight
     */
    func getWeightFromHealth() {
        // 1. Construct an HKSampleType for weight
        let sampleType = HKSampleType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyMass)
        
        // 2. Call the method to read the most recent weight sample
        readMostRecentSample(sampleType: sampleType!, completion: { (mostRecentWeight, error) -> Void in
            
            if( error != nil )
            {
                print("Error reading weight from HealthKit Store: \(String(describing: error?.localizedDescription))")
                return;
            }
            
            var weightLocalizedString = "Unknown";
            // 3. Format the weight to display it on the screen
            let weight1 = mostRecentWeight as? HKQuantitySample;
            if let kilograms = weight1?.quantity.doubleValue(for: HKUnit.gramUnit(with: .kilo)) {
                let weightFormatter = MassFormatter()
                weightFormatter.isForPersonMassUse = true;
                weightLocalizedString = weightFormatter.string(fromKilograms: kilograms)
            }
            
            // 4. Update UI in the main thread
            DispatchQueue.main.async(execute: { () -> Void in
                //self.weight = weightLocalizedString
                self.healthTree?.child("weight").setValue(weightLocalizedString)
            });
        });
    }
    
    /*
     Generate the query to get Quantity for Height
     */
    func getHeightFromHealth()
    {
        // 1. Construct an HKSampleType for Height
        let sampleType = HKSampleType.quantityType(forIdentifier: HKQuantityTypeIdentifier.height)
        
        // 2. Call the method to read the most recent Height sample
        readMostRecentSample(sampleType: sampleType!, completion: { (mostRecentHeight, error) -> Void in
            
            if( error != nil ) {
                print("Error reading weight from HealthKit Store: \(String(describing: error?.localizedDescription))")
                return;
            }
            
            var heightLocalizedString = "Unknown";
            let height1 = mostRecentHeight as? HKQuantitySample;
            // 3. Format the height to display it on the screen
            if let meters = height1?.quantity.doubleValue(for: HKUnit.meter()) {
                let heightFormatter = LengthFormatter()
                heightFormatter.isForPersonHeightUse = true;
                heightLocalizedString = heightFormatter.string(fromMeters : meters);
            }
            
            // 4. Update UI. HealthKit use an internal queue. We make sure that we interact with the UI in the main thread
            DispatchQueue.main.async(execute: { () -> Void in
               self.healthTree?.child("height").setValue(heightLocalizedString)
            });
        })
        
    }
    
    
    /*
     Get Blood Type text from defined parameters
     */
    func bloodTypeLiteral(_ bloodType:HKBloodType?)->String
    {
        
        var bloodTypeText = "Unknown";
        if bloodType != nil {
            
            switch( bloodType! ) {
            case .aPositive:
                bloodTypeText = "A+"
            case .aNegative:
                bloodTypeText = "A-"
            case .bPositive:
                bloodTypeText = "B+"
            case .bNegative:
                bloodTypeText = "B-"
            case .abPositive:
                bloodTypeText = "AB+"
            case .abNegative:
                bloodTypeText = "AB-"
            case .oPositive:
                bloodTypeText = "O+"
            case .oNegative:
                bloodTypeText = "O-"
            default:
                break;
            }
            
        }
        return bloodTypeText;
    }
    
    func authorizeHealthKit(_ completion: ((_ success: Bool, _ error: String?) -> Void)!) {
        if !HKHealthStore.isHealthDataAvailable() {
            
            if (completion != nil) {
                completion(false, "Health Kit not available")
            }
            return
        }
        
        
        let healthKitTypesToRead = Set([
            HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.dateOfBirth)! as HKCharacteristicType,
            HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.biologicalSex)! as HKCharacteristicType,
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)! as HKQuantityType,
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.respiratoryRate)! as HKQuantityType,
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyMass)! as HKQuantityType,
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.height)! as HKQuantityType,
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)! as HKQuantityType
            
            ])
        
        healthKitStore.requestAuthorization(toShare: nil, read: healthKitTypesToRead) {
            (success, error) -> Void in
            if !success {
                let error = "Error while requesting authorization."
                if (completion != nil) {
                    completion(false, error)
                }
                return
            }
        }
    }
    
    
    
    /**
     Generate the query to get the charatcteristic data
     */
    func readMostRecentSample(sampleType:HKSampleType , completion: ((HKSample?, NSError?) -> Void)!)
    {
        
        // 1. Build the Predicate
        let past = NSDate.distantPast as NSDate
        let now   = NSDate()
        let mostRecentPredicate = HKQuery.predicateForSamples(withStart: past as Date, end:now as Date, options: .strictEndDate)
        
        // 2. Build the sort descriptor to return the samples in descending order
        let sortDescriptor = NSSortDescriptor(key:HKSampleSortIdentifierStartDate, ascending: false)
        // 3. we want to limit the number of samples returned by the query to just 1 (the most recent)
        let limit = 1
        
        // 4. Build samples query
        let sampleQuery = HKSampleQuery(sampleType: sampleType, predicate: mostRecentPredicate, limit: limit, sortDescriptors: [sortDescriptor])
        { (sampleQuery, results, error ) -> Void in
            
            if error != nil {
                completion(nil,error! as NSError)
                return;
            }
            
            // Get the first sample
            let mostRecentSample = results?.first as? HKQuantitySample
            
            // Execute the completion closure
            if completion != nil {
                completion(mostRecentSample,nil)
            }
        }
        // 5. Execute the Query
        self.healthKitStore.execute(sampleQuery)
    }
    
    func readProfile() {
        var ageStr:String?
        /** DOB **/
        if let birthDay = try? healthKitStore.dateOfBirth() {
            let today = Date()
            _ = Calendar.current
            let differenceComponents = (Calendar.current as NSCalendar).components(NSCalendar.Unit.year, from: birthDay, to: today, options: NSCalendar.Options(rawValue:0) )
            let age = differenceComponents.year
            
            ageStr = "\(age ?? 0)"
            self.healthTree?.child("dob").setValue(String(describing: birthDay))
        } else {
            ageStr = "Not Set"
            self.healthTree?.child("dob").setValue("Not Set")
        }
        
        /** Age **/
        self.healthTree?.child("age").setValue(ageStr)
        
        
        /** GENDER **/
        var sexStr:String = "Unknown"
        let biologicalSex:HKBiologicalSexObject? = try? healthKitStore.biologicalSex()
        if biologicalSex?.biologicalSex == HKBiologicalSex.notSet {
            sexStr = "Not Set"
        } else{
            if(biologicalSex == nil) {
                sexStr = "Not Set"
            } else{
                sexStr = String(self.biologicalSexLiteral(biologicalSex!.biologicalSex))
            }
            self.healthTree?.child("sex").setValue(sexStr)
        }
        
        
        /** BLOOD TYPE **/
        var typeStr:String = "Unknown"
        let bloodType:HKBloodTypeObject? = try? healthKitStore.bloodType()
        if bloodType?.bloodType == HKBloodType.notSet {
            typeStr = "Not Set"
        } else{
            typeStr = String(describing: bloodType?.bloodType)
        }
        self.healthTree?.child("bloodType").setValue(String(typeStr))
    
    }

    /*
     Get Gender Type text from defined parameters
     */
    func biologicalSexLiteral(_ biologicalSex:HKBiologicalSex?)->String
    {
        var biologicalSexText = "Unknown"
        
        if  biologicalSex != nil {
            
            switch( biologicalSex! )
            {
            case .female:
                biologicalSexText = "Female"
            case .male:
                biologicalSexText = "Male"
            default:
                break;
            }
            
        }
        return biologicalSexText;
    }

    func getHeartData() {
        let heartRateUnit:HKUnit = HKUnit(from: "count/min")
        //let heartRateType:HKQuantityType   = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!
        
        // 1. Create a heart rate BPM Sample
        let heartRateType = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!
        let heartRateQuantity = HKQuantity(unit: HKUnit(from: "count/min"),
                                           doubleValue: Double(arc4random_uniform(80) + 100))
        let heartSample = HKQuantitySample(type: heartRateType, quantity: heartRateQuantity, start: NSDate() as Date, end: NSDate() as Date)
        
       
        //predicate
        let calendar = NSCalendar.current
        let now = NSDate()
        
        let unitFlags = Set<Calendar.Component>([.day, .month, .year, .hour])
        var componentsNow = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: now as Date)
        
        let startDate:NSDate = calendar.date(from: componentsNow)! as NSDate
        //let endDate:NSDate? = calendar.date(byAdding: .day, value: 1, to: startDate)
        let endDate = startDate.addingTimeInterval(5.0 * 60.0)
        
        let predicate = HKQuery.predicateForSamples(withStart: startDate as Date, end: endDate as Date, options: [])
        
        // 2. descriptor
        let sortDescriptors = [
            NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)
        ]
        
        // 3. we want to limit the number of samples returned by the query to just 1 (the most recent)
        let limit = 1
        var typeStr:String = "Unknown"
        
        let sampleQuery = HKSampleQuery(sampleType: heartRateType, predicate: predicate, limit: limit, sortDescriptors: sortDescriptors) { (sampleQuery, results, error ) -> Void in
            
        guard error == nil else { print("error"); return }
            
        let mostRecentSample = results?.first as? HKQuantitySample
            if let ht = mostRecentSample?.quantity.doubleValue(for: heartRateUnit) {
                typeStr = String(ht)
                print(typeStr)
            }
            
        
        self.healthKitStore.execute(sampleQuery)
        self.healthTree?.child("heartRate").setValue(String(typeStr))
    }
    }
    func startObservingDatabase (user: User) {
        databaseHandle = healthTree?.observe(.value, with: { (snapshot) in
            var newItems = [HealthModel]()
            
            for itemSnapShot in snapshot.children {
                let item = HealthModel(snapshot: itemSnapShot as! DataSnapshot)
                newItems.append(item)
            }
            
        })
    }
    
    deinit {
        healthTree?.removeObserver(withHandle: databaseHandle)
    }
}

