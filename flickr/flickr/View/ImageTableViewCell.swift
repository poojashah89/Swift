//
//  ImageTableViewCell.swift
//  flickr
//
//  Created by Pooj on 4/8/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation
import UIKit

class ImageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var urlText: UILabel!
    
    @IBOutlet weak var flickrImage: UIImageView!
    
    var renderImage: ImageModel! {
        didSet {
            urlText.text = renderImage.title
            
            let image_url = URL(string: renderImage.imageURLString!)!
            print(image_url.absoluteString)
            
            let data = try? Data(contentsOf: image_url)
            flickrImage.image = UIImage(data: data!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
