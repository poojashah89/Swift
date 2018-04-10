//
//  ViewController.swift
//  flickr
//
//  Created by Pooj on 4/8/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var businesses: [ImageModel]?
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        self.loadImages()
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadImages(){
        
        let path = "https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=d60c55af243a0ed2b6124a72d37f1aaf&format=json&nojsoncallback=1"

        let url = URL(string: path)
        let session = URLSession.shared
        
        //DispatchQueue.main.async {
            let task = session.dataTask(with: url! as URL, completionHandler: {jsonData, response, error -> Void in
                if(error != nil) {
                    // If there is an error in the web request, print it to the console
                    
                }
                do {
                    if let json = try JSONSerialization.jsonObject(with: jsonData!, options:.allowFragments) as? [String:Any] {
                       
                        var quoteDictionary: NSDictionary!
                        quoteDictionary = json["photos"] as! NSDictionary
                        let photoM = [quoteDictionary][0]["photo"] as! [NSDictionary]
                        self.businesses = ImageModel.businesses(array: photoM)
                
                    }
                    
                } catch let err{
                    print(err.localizedDescription)
                }
                
            })
            task.resume()
        //}
        self.tableView.reloadData()
    }
    
    /*func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if businesses != nil{
            return businesses!.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as! ImageTableViewCell
        print(self.businesses![indexPath.row].title as Any)
        print(self.businesses![indexPath.row].imageURLString as Any)
        
        cell.renderImage = businesses![indexPath.row]
        
        return cell
    }*/
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if businesses != nil{
            return businesses!.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as! ImageTableViewCell
        cell.renderImage = businesses![indexPath.row]
        return cell
    }
    
}
