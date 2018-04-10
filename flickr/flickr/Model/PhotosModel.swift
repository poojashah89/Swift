//
//  PhotosModel.swift
//  flickr
//
//  Created by Pooj on 4/8/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation

class PhotosModel {
    let page: Int
    let pages: Int
    let perpage: Int
    let total : Int
    var photo = [ImageModel]()
    
    init?(json: [Any]) {
        self.page = json[0] as? Int ?? 0
        self.pages = json[1] as? Int ?? 0
        self.perpage = json[2] as? Int ?? 0
        self.total = json[3] as? Int ?? 0
        self.photo = (json[4] as? [ImageModel])!
        
        //self.image_url = URL(string: imageURLString)
    }
    
    init(dictionary: NSDictionary) {
        page = (dictionary["page"] as? Int)!
        pages = (dictionary["pages"] as? Int)!
        perpage = (dictionary["perpage"] as? Int)!
        total = (dictionary["total"] as? Int)!
        
        self.photo = (dictionary["photo"] as? [ImageModel])!
        
    }
  
}
