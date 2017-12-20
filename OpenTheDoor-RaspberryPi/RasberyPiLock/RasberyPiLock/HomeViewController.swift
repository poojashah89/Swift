
//
//  HomeViewController.swift
//  RasberyPiLock
//
//  Created by chalapati rao avadhanula venkata on 11/29/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import Foundation
import Intents
import UIKit
import Speech

class HomeViewController: UIViewController, SFSpeechRecognizerDelegate, AVSpeechSynthesizerDelegate {
    
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()
    
    let speechSynthesizer = AVSpeechSynthesizer()
    @IBAction func whosIsAtTheDoorButton(_ sender: Any) {
        self.whoIsAtTheDoor()
    }
    
    @IBOutlet weak var visitorimage: UIImageView!
    @IBOutlet weak var visitorname: UILabel!
   // @IBOutlet weak var addbutton: UIButton!
    //SpeechFramework
    
    @IBOutlet weak var textView: UITextView!
    
    
    @IBOutlet weak var microphoneButton: UIButton!
    
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))!
    
    var notknown = ["unknown", "not known", "not found"]

    func addContact(){
        if (visitorname.text == "unknown"){
            //addbutton.isEnabled = true
            //addbutton.isHidden = false
        }
        else {
            //addbutton.isEnabled = false
            //addbutton.isHidden = true
        }
    }
  /* sneha not required as we are going to add contacts through history page
    @IBAction func addContactButton(_ sender: Any) {
       
    }*/
    
    @IBAction func addToContact(_ sender: Any) {
         //performSegue(withIdentifier: "addcontactsegue", sender: self)
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactscontroller = segue.destination as! ContactsViewController
        contactscontroller.newcontact = visitorname.text!
    
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addContact()
        // Do any additional setup after loading the view, typically from a nib.
        INPreferences.requestSiriAuthorization { (status) in
            
        }
        self.enableSIRI()
        let myVocab = ["push up", "sit up", "pull up", "open the door"]
        let myVocabSet = NSOrderedSet(array: myVocab) //Convert myVocab to an NSOrderedSet
        INVocabulary.shared().setVocabularyStrings(myVocabSet, of: .workoutActivityName)
        
      
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func lockDoor(_ sender: Any) {
        lockTheDoor()
    }
    
    
    @IBAction func unlockDoor(_ sender: Any) {
        unlockTheDoor()
    }
    
    
    @IBAction func microphoneTapped(_ sender: Any) {
        if audioEngine.isRunning {
            audioEngine.stop()
            recognitionRequest?.endAudio()
            microphoneButton.isEnabled = false
            microphoneButton.setTitle("Start Recording", for: .normal)
            microphoneButton.setImage( #imageLiteral(resourceName: "mic"), for: UIControlState.normal)
            
        } else {
            startRecording()
            microphoneButton.setTitle("Stop Recording", for: .normal)
            microphoneButton.setImage( #imageLiteral(resourceName: "micRecording"), for: UIControlState.normal)
            
        }
    }
    
    /*
    * Executes to see who is at the door
    *   1. Call Raspi and take picstures and copy onto AWS Unknown folder
    *   2. Call AWS recognize and predicts
    *   3. provides result
    */
    func whoIsAtTheDoor() {
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
        view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
        
        let req = NSMutableURLRequest(url: NSURL(string:"http://10.15.51.1:5000/clickPhoto")! as URL)
        let task = URLSession.shared.dataTask(with: req as URLRequest, completionHandler: { data,response,error in
            if error != nil{
                print(error!.localizedDescription)
                self.activityIndicator.stopAnimating()
                return
            }
          //  if let responseJSON = (try? JSONSerialization.jsonObject(with: data!, options: [])) as? [String:AnyObject]{
            
                self.fetchPhoto()
            
                let req = NSMutableURLRequest(url: NSURL(string:"http://50.112.13.135:5000/recognize")! as URL)
            
                print("entering into the recognition ")
            
                let task = URLSession.shared.dataTask(with: req as URLRequest, completionHandler: { data,response,error in
                    if error != nil{
                        print(error!.localizedDescription)
                        return
                    }
                    
                    print("executing the recognition .py")
                    
                    if let responseJSON = (try? JSONSerialization.jsonObject(with: data!, options: [])) as? [String:AnyObject]{
                        
                        print(responseJSON)
                        if let response_token:String = responseJSON["Name"] as? String {
                            print(response_token)
                            let sppeakText = response_token + " is here"
                            DispatchQueue.main.async(execute: { () -> Void in
                                self.visitorname.text = response_token
                                self.activityIndicator.stopAnimating()
                                let speechUtterance = AVSpeechUtterance(string: sppeakText)
                                speechUtterance.rate = 0.25
                                speechUtterance.pitchMultiplier = 0.25
                                speechUtterance.volume = 0.75
                                self.speechSynthesizer.speak(speechUtterance)
                                
                            })
                        } else {
                            self.activityIndicator.stopAnimating()
                        }
                    }
                })
                task.resume()
            //}
        })
        task.resume()
    }
    
    /**
     * Fetch the photo to display
     **/
    func fetchPhoto() {
        
        let string_url = "http://10.15.51.1:5000/images/image0.jpg";
        print("Fetching image from " , string_url)
        DispatchQueue.main.async {
            self.getDataFromUrl(string_url, completion: { (data) in
                DispatchQueue.main.async {
                    let image = UIImage(data: data!)
                    self.visitorimage.image = image
                    print("img refreshed")
                }
            })
        }
        /* let url = URL(string:string_url)
         let data = try? Data(contentsOf: url!)
         visitorimage.image = UIImage(data: data!)
         */
       /* URLSession.shared.dataTask(with: NSURL(string: string_url)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                print(error!)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image1 = UIImage(data: data!)
                print("Fetching data" , data as Any)
                self.visitorimage.image = image1
                
            })
            
        }).resume()*/
    }
    
    func getDataFromUrl(_ url:String, completion: @escaping ((_ data: Data?) -> Void)) {
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { (data, response, error) in
            if let newData = data {
                completion(newData)
            }
        }) .resume()
    }
    /*
     * Lock the door
     */
    func lockTheDoor() {
        let req = NSMutableURLRequest(url: NSURL(string:"http://10.15.51.1:5000/lock")! as URL)
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
    
    /*
     * UnLock the door
     */
    func unlockTheDoor() {
        let req = NSMutableURLRequest(url: NSURL(string:"http://10.15.51.1:5000/unlock")! as URL)
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
    
    //SpeechKit
    /*
     * Start Recorder
     */
    func startRecording() {
        if recognitionTask != nil {  //1
            recognitionTask?.cancel()
            recognitionTask = nil
        }
        
        let audioSession = AVAudioSession.sharedInstance()  //2
        do {
            try audioSession.setCategory(AVAudioSessionCategoryRecord)
            try audioSession.setMode(AVAudioSessionModeMeasurement)
            try audioSession.setActive(true, with: .notifyOthersOnDeactivation)
        } catch {
            print("audioSession properties weren't set because of an error.")
        }
        
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()  //3
        
        guard let inputNode = audioEngine.inputNode else {
            fatalError("Audio engine has no input node")
        }  //4
        
        guard let recognitionRequest = recognitionRequest else {
            fatalError("Unable to create an SFSpeechAudioBufferRecognitionRequest object")
        } //5
        
        recognitionRequest.shouldReportPartialResults = true  //6
        
        recognitionTask = speechRecognizer.recognitionTask(with: recognitionRequest, resultHandler: { (result, error) in  //7
            
            var isFinal = false  //8
            //Open & Close the door using RaspberryPiLock
            if(result?.bestTranscription.formattedString == "Open the door using iLock"){
                let req = NSMutableURLRequest(url: NSURL(string:"http://10.15.51.1:5000/unlock")! as URL)
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
            }else if(result?.bestTranscription.formattedString == "Close the door using iLock"){
                let req = NSMutableURLRequest(url: NSURL(string:"http://10.15.51.1:5000/lock")! as URL)
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
            if result != nil {
                
                self.textView.text = result?.bestTranscription.formattedString  //9
                //self.store?.setObject( self.textView.text as CKRecordValue?, forKey: "VoiceText")
                //self.storeInCloud()
                isFinal = (result?.isFinal)!
            }
            
            if error != nil || isFinal {  //10
                self.audioEngine.stop()
                inputNode.removeTap(onBus: 0)
                
                self.recognitionRequest = nil
                self.recognitionTask = nil
                
                self.microphoneButton.isEnabled = true
            }
        })
        
        let recordingFormat = inputNode.outputFormat(forBus: 0)  //11
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, when) in
            self.recognitionRequest?.append(buffer)
        }
        
        audioEngine.prepare()  //12
        
        do {
            try audioEngine.start()
        } catch {
            print("audioEngine couldn't start because of an error.")
        }
        
        textView.text = "Say something, I'm listening!"
        
    }
    
    /*
     * speech Recognizer
     */
    func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        if available {
            microphoneButton.isEnabled = true
        } else {
            microphoneButton.isEnabled = false
        }
    }
    
    func enableSIRI() {
        //SpeechKit
        microphoneButton.isEnabled = false
        
        speechRecognizer.delegate = self
        
        SFSpeechRecognizer.requestAuthorization { (authStatus) in
            
            var isButtonEnabled = false
            
            switch authStatus {
            case .authorized:
                isButtonEnabled = true
                
            case .denied:
                isButtonEnabled = false
                print("User denied access to speech recognition")
                
            case .restricted:
                isButtonEnabled = false
                print("Speech recognition restricted on this device")
                
            case .notDetermined:
                isButtonEnabled = false
                print("Speech recognition not yet authorized")
            }
            
            OperationQueue.main.addOperation() {
                self.microphoneButton.isEnabled = isButtonEnabled
            }
        }
    }
}

