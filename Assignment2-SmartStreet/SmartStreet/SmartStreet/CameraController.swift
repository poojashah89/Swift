//
//  CameraController.swift
//  SmartStreet
//
//  Created by Pooj on 9/20/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit
import Social
import MobileCoreServices
import AVFoundation

class CameraController : ViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    var imageorvideo: Int = 0
    var picker:UIImagePickerController?=UIImagePickerController()
    
    @IBOutlet weak var captureImage: UIImageView!
    
    @IBAction func clickPhoto(_ sender: Any) {
        openCamera()
    }
 
    
    @IBAction func clickVideo(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)
        {
            imageorvideo = 0
            
            let imagePicker = UIImagePickerController()
            
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.mediaTypes = [kUTTypeMovie as String]
            imagePicker.allowsEditing = false
            
            imagePicker.showsCameraControls = true
            self.present(imagePicker, animated: true, completion: nil)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picker?.delegate=self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: true, completion: nil)
        
        if(imageorvideo == 1) {
            captureImage.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
            let imageData = UIImageJPEGRepresentation(captureImage.image! , 0.6)
            let compressedJPGImage = UIImage(data: imageData!)
            UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
            
        } else if(imageorvideo == 0) {
            let tempImage = info[UIImagePickerControllerMediaURL] as! NSURL!
            let pathString = tempImage?.relativePath
           // self.dismiss(animated: true, completion: {})
            
            UISaveVideoAtPathToSavedPhotosAlbum(pathString!, self, nil, nil)
            
            captureImage.image = generateThumnail(filePathLocal: (tempImage?.absoluteString)!)
        }
        
        
    }
    
    
    @IBAction func clickFB(_ sender: Any) {
        let imageData = UIImageJPEGRepresentation(captureImage.image! , 0.6)

        if let vc = SLComposeViewController(forServiceType: SLServiceTypeFacebook) {
            vc.setInitialText("Look at this picture I clicked!")
            vc.add(UIImage(data: imageData!))
            present(vc, animated: true)
        }

    }
    
    
    @IBAction func clickTwitter(_ sender: Any) {
       let imageData = UIImageJPEGRepresentation(captureImage.image! , 0.6)
        
        if let vc = SLComposeViewController(forServiceType: SLServiceTypeTwitter) {
            vc.setInitialText("Look at this picture I clicked!")
            vc.add(UIImage(data: imageData!))
            present(vc, animated: true)
        }
        
    }
    
    func openCamera()
    {
        imageorvideo = 1
        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)){
            picker!.allowsEditing = false
            picker!.sourceType = UIImagePickerControllerSourceType.camera
            picker!.cameraCaptureMode = .photo
            present(picker!, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Camera Not Found", message: "This device has no Camera", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style:.default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func generateThumnail(filePathLocal : String) -> UIImage?{
        let vidURL = NSURL(fileURLWithPath:filePathLocal as String)
        let asset = AVURLAsset(url: vidURL as URL)
        let generator = AVAssetImageGenerator(asset: asset)
        generator.appliesPreferredTrackTransform = true
        
        let timestamp = CMTime(seconds: 1, preferredTimescale: 60)
        
        do {
            let imageRef = try generator.copyCGImage(at: timestamp, actualTime: nil)
            return UIImage(cgImage: imageRef)
        }
        catch let error as NSError
        {
            print("Image generation failed with error \(error)")
            return nil
        }

    }
    

}
