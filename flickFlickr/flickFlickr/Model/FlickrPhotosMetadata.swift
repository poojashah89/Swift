//
//  FlickrPhotosMetadata.swift
//  flickFlickr
//
//  Created by Pooj on 4/9/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation

class FlickrPhotosMetadata: NSObject {
    var page: Int?
    var pages: Int?
    var perpage: Int?
    var total: Int?
    
    init(dictionary: NSDictionary) {
        page = dictionary["page"] as? Int ?? 0
        pages = dictionary["pages"] as? Int ?? 0
        perpage = dictionary["perpage"] as? Int ?? 0
        total = dictionary["total"] as? Int ?? 0
    }
    
    class func findPhotosMetadata(callback: @escaping (FlickrPhotosMetadata) -> ()) {
        
        let path = "https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=7b85e389607020e3b5a12c5a40e260db&format=json&nojsoncallback=1"
        
        let url = URL(string: path)
        let session = URLSession.shared
        let task = session.dataTask(with: url! as URL, completionHandler: {jsonData, response, error -> Void in
            if(error != nil) {
                // If there is an error in the web request, print it to the console
                print(error as Any)
                return
            }
            do {
                if let json = try JSONSerialization.jsonObject(with: jsonData!, options:.allowFragments) as? [String:Any]{
                    
                    var quoteDictionary: NSDictionary!
                    quoteDictionary = json["photos"] as! NSDictionary
                    //totalPages = [quoteDictionary][0]["pages"] as! Int
                    
                    callback( FlickrPhotosMetadata(dictionary: quoteDictionary))
                    
                }
            } catch let err{
                print(err.localizedDescription)
            }
            
        })
        task.resume()
    }
}
