//
//  ShareController.swift
//  SmartStreet
//
//  Created by Pooj on 9/20/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit
import Social
import MessageUI

class ShareController: UIViewController, MFMailComposeViewControllerDelegate, UIImagePickerControllerDelegate,UIPopoverControllerDelegate,UINavigationControllerDelegate{
    
     var picker:UIImagePickerController?=UIImagePickerController()
    var type: String!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         picker?.delegate=self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openGallery(){
        picker!.allowsEditing = false
        picker!.sourceType = UIImagePickerControllerSourceType.photoLibrary
        present( picker!, animated: true, completion: nil)
    
    }

    
    @IBAction func shareFB(_ sender: Any) {
        openGallery()
        self.type = "FB"

    }
    
    
    @IBAction func clickTwitter(_ sender: Any) {
        openGallery()
        self.type = "TW"
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.contentMode = .scaleAspectFit
        imageView.image = chosenImage
        dismiss(animated: true, completion: nil)
        
        let imageData = UIImageJPEGRepresentation(imageView.image! , 0.6)
        
        if(type == "FB"){
            if let vc = SLComposeViewController(forServiceType: SLServiceTypeFacebook) {
                vc.setInitialText("Look at this picture I clicked!")
                vc.add(UIImage(data: imageData!))
                present(vc, animated: true)
                
                print("You posted succesfully on your wall")
            }
        }
        
        if(type == "TW"){
            if let vc = SLComposeViewController(forServiceType: SLServiceTypeTwitter) {
                vc.setInitialText("Look at this picture I clicked!")
                vc.add(UIImage(data: imageData!))
                present(vc, animated: true)
            
                print("Tweet Posted")
            }
        }

        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func shareByEmail(_ sender: Any) {
        if( MFMailComposeViewController.canSendMail() ) {
            print("Can send email.")
            
            let mailComposer = MFMailComposeViewController()
            mailComposer.mailComposeDelegate = self
            
            //Set the subject and message of the email
            mailComposer.setSubject("Have you heard a swift?")
            mailComposer.setMessageBody("This is what they sound like.", isHTML: false)
            
            if let filePath = Bundle.main.path(forResource: "swifts", ofType: "wav") {
                print("File path loaded.")
                
                if let fileData = NSData(contentsOfFile: filePath) {
                    print("File data loaded.")
                    mailComposer.addAttachmentData(fileData as Data, mimeType: "audio/wav", fileName: "swifts")
                }
            }
            self.present(mailComposer, animated: true, completion: nil)
        }
    }
    
    private func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
