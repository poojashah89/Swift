//
//  FlickrImageModel.swift
//  flickFlickr
//
//  Created by Pooj on 4/9/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation
import UIKit

class FlickrImageModel: NSObject {
    var title: String?
    var id: String?
    var owner: String?
    var farm: Int?
    var secret: String?
    var server: String?
    var imageURLString: String?
    var largePhotoURLString: String?
    
    var ispublic: Int?
    var isfriend: Int?
    var isfamily: Int?
    
    init(dictionary: NSDictionary) {
        id = dictionary["id"] as? String ?? "No ID"
        title = dictionary["title"] as? String ?? "No title"
        server = dictionary["server"] as? String ?? "No server"
        secret = dictionary["secret"] as? String ?? "No secret"
        farm = dictionary["farm"] as? Int ?? 0
        
        //Build farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
        
        // download medium photo
        self.imageURLString = "https://farm\(farm ?? 0).staticflickr.com/\(server ?? "noserver")/\(id ?? "noid")_\(secret ?? "nosecret")_m.jpg"
        
        // To download Large Photo
        self.largePhotoURLString = "https://farm\(farm ?? 0).staticflickr.com/\(server ?? "noserver")/\(id ?? "noid")_\(secret ?? "nosecret")_b.jpg"

    }
    
    class func FlickrPhotoArray(array: [NSDictionary]) -> [FlickrImageModel] {
        var photos = [FlickrImageModel]()
        for dictionary in array {
            let photo = FlickrImageModel(dictionary: dictionary)
            photos.append(photo)
        }
        return photos
    }
   
    
    class func recentFlickrPhotos(page: Int, callback: @escaping (Array<FlickrImageModel>) -> ()) {
        let path = "https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=7b85e389607020e3b5a12c5a40e260db&page=\(page)&format=json&nojsoncallback=1"
        
        let url = URL(string: path)
        let session = URLSession.shared
        let task = session.dataTask(with: url! as URL, completionHandler: {jsonData, response, error -> Void in
            if(error != nil) {
                // If there is an error in the web request, print it to the console
                print(error as Any)
                return
            }
            do {
                if let json = try JSONSerialization.jsonObject(with: jsonData!, options:.allowFragments) as? [String:Any] {
                    
                    var quoteDictionary: NSDictionary!
                    quoteDictionary = json["photos"] as! NSDictionary
                    
                    let photoM = [quoteDictionary][0]["photo"] as! [NSDictionary]
                    callback(FlickrImageModel.FlickrPhotoArray(array: photoM))
                }
            } catch let err{
                print(err.localizedDescription)
            }
            
        })
        task.resume()
        
    }

    
}
