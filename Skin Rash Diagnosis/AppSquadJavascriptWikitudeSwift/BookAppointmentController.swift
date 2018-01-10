//
//  BookAppointmentController.swift
//  SkinCare
//
//  Created by Pooja Shah on 5/8/17.
//  Copyright © 2017 Pooja Shah. All rights reserved.
//

import UIKit
import HealthKit
import SwiftyJSON

class BookAppointmentController: UIViewController, UITextFieldDelegate
{
  
    @IBOutlet weak var patientText: UITextField!
    
    @IBOutlet weak var bookAppt: UILabel!
    
    @IBOutlet weak var ageText: UITextField!
    
    @IBOutlet weak var weightText: UITextField!
    
    @IBOutlet weak var heightText: UITextField!
    
    @IBOutlet weak var bloodTypeText: UITextField!
    
    @IBOutlet weak var sexText: UITextField!
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let healthKitStore:HKHealthStore = HKHealthStore()
    var hkManager = HKManager()
    
    var height : String!, weight:String!, bloodType:String!, birthDate: String!, sex:String!, heartRate:String!, respRate:String!, age:String!, date:String!, patient:String!
    
    var selectedDoctor : String?

   
    @IBAction func bookAppt(_ sender: Any) {
    
        
        self.height=ageText.text
        self.weight = weightText.text
        self.age=ageText.text
        self.bloodType = bloodTypeText.text
        self.sex = sexText.text
        self.patient = patientText.text
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short   // You can also use Long, Medium and No style.
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        self.date = dateFormatter.string(from: datePicker.date)
        print(date)
        bookAppointment();
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    /*
     Post call for Book Appointment
    */
    func bookAppointment(){
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        let target = "http://54.193.47.19:8070/patients"
        NSLog("DataManager| using loginURL: " + target)
        
        let url:URL = URL(string: target)!
        //let session = URLSession.shared
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        
        let dict = ["name": self.patient, "age":self.age, "height":self.height, "weight":self.weight, "bloodType":self.bloodType, "sex":self.sex, "doctor":selectedDoctor ?? "error", "apptdate":self.date] as [String: Any]
        
        let postString = try? JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
        
        print(postString as Any)
        request.httpBody = postString //postString.data(using: String.Encoding.utf8)
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        let task = session.dataTask(with: request as URLRequest) {
            (data, response, error) in
            
            if error != nil {
                print("error \(String(describing: error))")
                return
            }
            
            print("Response \(String(describing: response))")
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("Response data \(String(describing: responseString))")
            
            let alert = UIAlertController()
            
            alert.title = String(describing: responseString)
            alert.message = "Your appointment is confirmed"
            let cancelAction = UIAlertAction(title: "OK",
                                             style: .cancel, handler: nil)
            
            alert.addAction(cancelAction)
            self.present(alert, animated: true)
        }
        task.resume()
    }
    
   
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.patientText.delegate = self
        self.ageText.delegate = self
        self.sexText.delegate = self
        
        self.bloodTypeText.delegate = self
        self.ageText.delegate = self
        self.weightText.delegate = self
        self.heightText.delegate = self
        
        
        if selectedDoctor != nil {
            print("Selected doctor" + selectedDoctor!)
            bookAppt.text=selectedDoctor
            
            
            if HKHealthStore.isHealthDataAvailable() {
                
                hkManager.authorizeHealthKit() {
                    success, error in
                    if !success {
                        print( "ERROR in permission")
                        return
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {

                //1. Get Weight
                self.getHeightFromHealth()
                
                //2. Get Height
                self.getWeightFromHealth()
                
                let profile = self.hkManager.readProfile()
                
                //3. Age
                self.ageText.text = profile.age == nil ? "N/A" : String(profile.age!)
                
                //4. Blood type
                //self.bloodTypeText.text = profile.bloodType == nil ? "N/A" : String(describing: profile.bloodType!)
                
                var typeStr:String = "Unknown"
                print("original BT \(String(describing: profile.bloodType))")
                if(profile.bloodType != nil){
                    typeStr = self.bloodTypeLiteral(profile.bloodType!.bloodType)
                    print(typeStr)
                }
                self.bloodTypeText.text = typeStr
                self.bloodType = typeStr
                
                //5. Gender
                var sexStr:String = "Unknown"
                if(profile.biologicalsex != nil){
                    sexStr = self.biologicalSexLiteral(profile.biologicalsex!.biologicalSex)
                    print(sexStr)
                }
                self.sexText.text = sexStr
                
                //profile.biologicalsex == nil ? "N/A" :  String(profile.biologicalsex!)
                
                print(profile.age == nil ? "N/A" : String(profile.age!))
                print(profile.bloodType == nil ? "N/A" : String(describing: profile.bloodType!))
                })
            } else {
                print("No Health Data")
            }
        } else {
            print("Doesn’t contain a value.")
            bookAppt.text="Please select a doctor to make an appointment with!"
        }
        
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    /*
     Generate the query to get Quantity for Weight
     */
    func getWeightFromHealth() {
        // 1. Construct an HKSampleType for weight
        let sampleType = HKSampleType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyMass)
        
        // 2. Call the method to read the most recent weight sample
        self.hkManager.readMostRecentSample(sampleType: sampleType!, completion: { (mostRecentWeight, error) -> Void in
            
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
                self.weightText.text = weightLocalizedString
                self.weight = weightLocalizedString
                
                
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
        self.hkManager.readMostRecentSample(sampleType: sampleType!, completion: { (mostRecentHeight, error) -> Void in
            
            if( error != nil )
            {
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
                self.heightText.text = heightLocalizedString
                self.height = heightLocalizedString
            });
        })
        
    }
   
   /*
     Authorize the Applicarion for Quantity and Characteristic Type
    */
    class HKManager: NSObject {
        
        let healthKitStore:HKHealthStore = HKHealthStore()
        
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
        
        func readProfile() -> (age: Int?, biologicalsex:HKBiologicalSexObject?, bloodType:HKBloodTypeObject?) {
            
            
            var age:Int?
            
            if let birthDay = try? healthKitStore.dateOfBirth() {
                let today = Date()
                _ = Calendar.current
                let differenceComponents = (Calendar.current as NSCalendar).components(NSCalendar.Unit.year, from: birthDay, to: today, options: NSCalendar.Options(rawValue:0) )
                age = differenceComponents.year
                
                
                print("age \(String(describing: age))" )
            } else {
                print("Date of Birth is not set.")
            }
            
            let biologicalSex:HKBiologicalSexObject? = try? healthKitStore.biologicalSex()
            if biologicalSex?.biologicalSex == HKBiologicalSex.notSet {
                print("Biological sex is not set.")
            } else{
                print("sex \(String(describing: biologicalSex))" )
            }
            
            
            let bloodType:HKBloodTypeObject? = try? healthKitStore.bloodType()
            if bloodType?.bloodType == HKBloodType.notSet {
                print("Blood Type is not set.")
            } else{
                print("bloodType \(String(describing: bloodType))" )
            }
            
            
            return (age, biologicalSex, bloodType)
        }
    }
    
    
}
