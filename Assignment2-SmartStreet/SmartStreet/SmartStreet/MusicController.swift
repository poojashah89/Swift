//
//  MusicController.swift
//  SmartStreet
//
//  Created by Pooj on 10/25/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class MusicController: UIViewController, AVAudioRecorderDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var recordingLabel: UILabel!
    
    var recordingSession: AVAudioSession!
    var audioRecorder:AVAudioRecorder!
    var audioPlayer:AVAudioPlayer!
    var numberOfRecords:Int = 0
    var selectedPath = URL(string: "https://www.apple.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        // Do any additional setup after loading the view.
        recordingSession = AVAudioSession.sharedInstance()
        
        if let number:Int = UserDefaults.standard.object(forKey: "nofrecords")as?Int
        {
            numberOfRecords = number
        }
        
        AVAudioSession.sharedInstance().requestRecordPermission { (hasPermission) in
            if hasPermission
            {
                print("accepted")
            }
        }
    }
    
    /**
     ** Record now
     **/
    @IBAction func recordNow(_ sender: Any) {
        if audioRecorder == nil
        {
            numberOfRecords += 1
            let filename = getDirectory().appendingPathComponent("\(numberOfRecords).mp4")
            
            let settings = [AVFormatIDKey: Int(kAudioFormatMPEG4AAC), AVSampleRateKey:1200, AVNumberOfChannelsKey: 1,AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue ]
            
            //start Audio Recording
            
            do{
                audioRecorder = try AVAudioRecorder(url: filename, settings: settings)
                audioRecorder.delegate = self
                audioRecorder.record()
                recordingLabel.text = "Stop Recording"
            }
            catch{
                
                displayAlert(title: "opps!", message: "Recording failed")
            }
            
        }else{
            audioRecorder.stop()
            audioRecorder = nil
            UserDefaults.standard.set(numberOfRecords, forKey: "nofrecords")
            myTableView.reloadData()
            recordingLabel.text = "Start Recording"
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return numberOfRecords
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String("Music \(indexPath.row + 1).mp4")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        selectedPath  = getDirectory().appendingPathComponent("\(indexPath.row + 1).mp4")
    
        do
        {
            audioPlayer = try AVAudioPlayer(contentsOf: selectedPath!)
            audioPlayer.play()
        }
        catch
        {
         print("ERROR while sharing: audio player null" )
        }
    }
    
    func getDirectory() -> URL
    {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = paths[0]
        return documentDirectory
    }
    
    // function display alert
    func displayAlert(title: String, message:String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "dismiss", style: .default, handler: nil))
    }

    
    @IBAction func shareMusic(_ sender: Any) {
        
        print(selectedPath!)
       
        let activityVC = UIActivityViewController(activityItems: [self.selectedPath!], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
        
    }
    
}

