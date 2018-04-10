 //
//  FlickrCollectionViewCell.swift
//  flickFlickr
//
//  Created by Pooj on 4/9/18.
//  Copyright © 2018 Pooja. All rights reserved.
//  Render an Image on Collection View cell

import Foundation
import UIKit

class FlickrCollectionViewCell: UICollectionViewCell {
    
    var task = URLSessionDownloadTask()
    var session = URLSession.shared
    
    // Thumbnail 
    @IBOutlet weak var flickrImage: UIImageView!
  
    var imageModel: FlickrImageModel? {
        didSet {
            //render image from FlickerImageModel Object
            let key = imageModel?.id
            let flickrUrl = imageModel?.imageURLString
                let url = URL(string: flickrUrl!)
                if(url != nil) {
                    task = session.downloadTask(with: url!, completionHandler: { (location, response, error) -> Void in
                        if let data = try? Data(contentsOf: url!){
                            
                            DispatchQueue.main.async(execute: { () -> Void in
                                let img:UIImage! = UIImage(data: data)
                                self.flickrImage.image = img
                                
                                // Create cache of an object
                                cache.setObject(img, forKey: key as AnyObject)
                            })
                        }
                    })
                    task.resume()
                }
            }
    }
 }
