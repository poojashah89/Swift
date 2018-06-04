//
//  RegisterQR.swift
//  SmartStreet
//
//  Created by Pooj on 10/25/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation

import Foundation
import UIKit
import AVFoundation

class RegisterQR: UIViewController, AVCaptureMetadataOutputObjectsDelegate  {

    var qrcodeImage: CIImage!
    @IBOutlet weak var qrimage: UIImageView!
    
    
    @IBAction func generate(_ sender: Any) {
        
        
       // qrimage.image = generateQRCode(from: "Hacking with Swift is the best iOS coding tutorial I've ever read!")
      
    }
    
    /*func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.applying(transform) {
                return UIImage(ciImage: output)
            }
        }
        
        return nil
    }
    */
    
    
    var video = AVCaptureVideoPreviewLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //creating session
        let session = AVCaptureSession()
        
        //define capture device
        let captureDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
        
        do{
            let input = try AVCaptureDeviceInput(device: captureDevice)
            session.addInput(input)
        }
        catch{
            print("ERROR")
        }
        let output = AVCaptureMetadataOutput()
        session.addOutput(output)
        
        output.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
        
        output.metadataObjectTypes = [AVMetadataObjectTypeQRCode]
        
        video = AVCaptureVideoPreviewLayer(session: session)
        video.frame = view.layer.bounds
        view.layer.addSublayer(video)
        
        self.view.bringSubview(toFront: qrimage)
        
        session.startRunning()
    }
    
    /**
 
     **/
    func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputMetadataObjects metadataObjects: [Any]!, from connection: AVCaptureConnection!) {
        
        if metadataObjects != nil && metadataObjects.count != 0
        {
            if let object = metadataObjects[0] as? AVMetadataMachineReadableCodeObject
            {
                if object.type == AVMetadataObjectTypeQRCode
                {
                    
                    var message = object.stringValue
                    var lines: [String] = []
                    message?.enumerateLines { line, _ in
                        lines.append(line)
                    }
                    let name = lines[0]
                    let email = lines[1]
                    let password = lines[2]
                    let phoneno = lines[3]
                    let datejoined=lines[4]
                    
                    // store Data
                    let defaults:UserDefaults = UserDefaults.standard
                    defaults.set(name, forKey: "nametext")
                    defaults.set(email, forKey: "emailtext")
                    defaults.set(password, forKey: "passwordtext")
                    defaults.set(phoneno, forKey: "phonetext")
                    defaults.set(datejoined, forKey: "datejoined")
                
                    UserDefaults.standard.synchronize()
                    
                    //displaying alert message with
                    let alertController = UIAlertController(title: "alert", message: "Registration is successful, Click on Login", preferredStyle: UIAlertControllerStyle.alert);
                    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){ action in self.dismiss(animated: true, completion: nil);
                        
                    }
                    alertController.addAction(okAction);
                    self.present(alertController, animated:true, completion:nil);
                    
                    
                    //UIApplication.shared.open(NSURL(string:object.stringValue)! as URL, options: [:], completionHandler: nil)
                    
                    
                }
            }
        }
        
    }
    
}
