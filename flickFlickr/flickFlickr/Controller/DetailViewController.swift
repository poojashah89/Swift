//
//  DetailViewController.swift
//  flickFlickr
//
//  Created by Pooj on 4/10/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation
import UIKit

// Display large photo
class DetailViewController: UIViewController {
 
    var img: String?
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imgTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(img as Any)
        loadLargeImage()
    }

    override func viewWillAppear(_ animated: Bool) {
       /* if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }*/
    }
    
    
    func loadLargeImage() {
        var task = URLSessionDownloadTask()
        let session = URLSession.shared
        
        let flickrUrl = self.img
        if flickrUrl != nil {
            let url = URL(string: flickrUrl!)
            if(url != nil) {
                task = session.downloadTask(with: url!, completionHandler: { (location, response, error) -> Void in
                    if let data = try? Data(contentsOf: url!){
                        
                        DispatchQueue.main.async(execute: { () -> Void in
                            let photo:UIImage! = UIImage(data: data)
                            self.imageView.image = photo
                        })
                    }
                })
                task.resume()
            }
        } else {
            print("image can not be loaded")
        }
    }
    
}



extension DetailViewController : ZoomingViewController
{
    func zoomingBackgroundView(for transition: ZoomTransitioningDelegate) -> UIView? {
        return nil
    }
    
    func zoomingImageView(for transition: ZoomTransitioningDelegate) -> UIImageView? {
        return imageView
    }
}



