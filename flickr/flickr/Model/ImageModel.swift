//
//  ImageModel.swift
//  flickr
//
//  Created by Pooj on 4/8/18.
//  Copyright © 2018 Pooja. All rights reserved.
//  Building URI to fetch Image farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg

import Foundation
import UIKit

class ImageModel: NSObject {
    var id: String?
    var owner: String?
    var farm: Int?
    var secret: String?
    var server: String?
    var imageURLString: String?
    var title: String?
    var ispublic: Int?
    var isfriend: Int?
    var isfamily: Int?
    
    /*init?(json: [Any]) {
        self.id = json[0] as? String ?? "No ID"
        self.owner = json[1] as? String ?? "No owner"
        self.secret = json[2] as? String ?? "No secret"
        self.server = json[3] as? String ?? "No server"
        self.farm = json[4] as? Int ?? 0
        self.title = json[5] as? String ?? "No title"
        self.ispublic = json[6] as? Int ?? 0
        self.isfriend = json[7] as? Int ?? 0
        self.isfamily = json[8] as? Int ?? 0
        
        //self.image_url = URL(string: imageURLString)
    }*/
    
    init(dictionary: NSDictionary) {
        id = dictionary["id"] as? String ?? "No ID"
        title = dictionary["title"] as? String ?? "No title"
        server = dictionary["server"] as? String ?? "No server"
        secret = dictionary["secret"] as? String ?? "No secret"
        farm = dictionary["farm"] as? Int ?? 0
        
        
        //Build farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
        self.imageURLString = "https://farm\(farm ?? 0).staticflickr.com/\(server ?? "noserver")/\(id ?? "noid")_\(secret ?? "nosecret").jpg"
        //print(self.imageURLString ?? "error")
        
    }
    
    class func businesses(array: [NSDictionary]) -> [ImageModel] {
        var businesses = [ImageModel]()
        for dictionary in array {
            let business = ImageModel(dictionary: dictionary)
            businesses.append(business)
        }
        return businesses
    }
    
}
