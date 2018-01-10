//
//  ViewController.swift
//  Siri


import UIKit
import Speech
import CloudKit

class ViewController: UIViewController, SFSpeechRecognizerDelegate {
	
	@IBOutlet weak var textView: UITextView!
	@IBOutlet weak var microphoneButton: UIButton!

    let publicDatabase = CKContainer.default().publicCloudDatabase
    var store:CKRecord?
    
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()
    private let speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: "en-US"))!
    
	override func viewDidLoad() {
        super.viewDidLoad()
        store = CKRecord(recordType: "SeniorCitizen")
        
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

    /*
     * Tap Microphone
     */
	@IBAction func microphoneTapped(_ sender: AnyObject) {
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
            
            if result != nil {
                
                self.textView.text = result?.bestTranscription.formattedString  //9
                self.store?.setObject( self.textView.text as CKRecordValue?, forKey: "VoiceText")
                self.storeInCloud()
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
    
    /*
     * Store in cloud
     */
    func storeInCloud(){
        publicDatabase.save(store!) { (saveRecord, error) in
            if error != nil {
                print("error occured " + error.debugDescription)
            } else {
              print("Search Saved")
                //let alert = UIAlertController(title: "Details Saved", message: " Details saved", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
               //alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                //self.present(alert, animated: true, completion: nil)
            }
        }
    }
}

