//
//  BookAppointmentController.swift
//  DermaCare
//
//  Created by Pooj on 2/1/18.
//  Copyright © 2018 Pooja. All rights reserved.
//

import Foundation
import UIKit

import Firebase
import SystemConfiguration
class BookAppointmentController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var loadMore: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let width = UIScreen.main.bounds.width
    
    //var historyImages = [AppointmentImagesModel]()
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    
    var imgURL = [String]()
    var imagename = [String]()
    var _selectedCells : NSMutableArray = []
    
    @IBOutlet weak var activityAnimator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
         collectionView.allowsMultipleSelection=true
        
        if(isInternetAvailable()) { // Validate network connectivity
            loadHistoryData()
            
            renderUI(width: Int(width/4), height: Int(width/2))
        } else{
            let alert = UIAlertController(title: "Error!", message: "Please check the network connectivity. History data could not be loaded ", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    // Fetch All Photos
    func loadHistoryData(){
        
        activityAnimator.isHidden = false
        activityAnimator.startAnimating()
        activityAnimator.sizeToFit()
        
        let userID: String = (Auth.auth().currentUser?.uid)!
        let ref = Database.database().reference()
        let refuser = ref.child("userlist/\(userID)").child("Photos")
        refuser.observe(.value, with: {(snapshot) in
            for item in snapshot.children{
                let child = item as AnyObject
                self.imagename.append(child.key)
                self.imgURL.append(child.value)
                
                DispatchQueue.main.async(execute: {
                    self.collectionView.reloadData()
                    self.activityAnimator.stopAnimating()
                    self.activityAnimator.isHidden = true
                })
            }
            
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.collectionView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.collectionView.reloadData()
    }
    
    // Render each cell using cellForItemAt
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imagename.count
    }
    
    // Render each cell using cellForItemAt
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HistoryImageCell", for: indexPath) as! AppointmentViewCell
       
        //let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HistoryImageCell") as? AppointmentViewCell
        
        let userID: String = (Auth.auth().currentUser?.uid)!
        let imageNameLocal = self.imagename[indexPath.row]
        let storage = Storage.storage().reference(forURL: "gs://dermacare-b1017.appspot.com/ImagesUploaded/\(userID)/\(imageNameLocal)")
        
        storage.getMetadata { metadata, error in
            if let error = error {
                print("error occurred", error)
            }else{
                let date = metadata?.timeCreated
                //print("date", date )
                //cell.resultLabel?.text = imageNameLocal
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
               // cell.dateLabel?.text = formatter.string(from: date as! Date)
            }
        }
    
        if let imageURL = URL(string: self.imgURL[indexPath.row]) {
            //let url = NSURL(String: imageURL)
            URLSession.shared.dataTask(with: imageURL, completionHandler: {(data,response,error) in
                
                if error != nil{
                    print(error)
                    return
                }
                DispatchQueue.main.async {
                   // cell.imgView?.image = UIImage(data: data!)
                    cell.historyImage?.image = UIImage(data: data!)
                }
            }).resume()
        }
        
        
        //add your tick mark image to the cell in your storyboard or xib file.
        let tickImage = cell.viewWithTag(indexPath.row) as? UIImageView
        
        if _selectedCells.contains(indexPath) {
            cell.isSelected=true
            collectionView.selectItem(at: indexPath, animated: true, scrollPosition: UICollectionViewScrollPosition.top)
            tickImage?.isHidden=false
        }
        else{
            cell.isSelected=false
            tickImage?.isHidden=true
        }
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        //add the selected cell contents to _selectedCells arr when cell is selected
        _selectedCells.add(indexPath)
        collectionView.reloadItems(at: [indexPath])
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
        //remove the selected cell contents from _selectedCells arr when cell is De-Selected
        
        _selectedCells.remove(indexPath)
        collectionView.reloadItems(at: [indexPath])
    }
    
    // Validate Network Connectivity
    func isInternetAvailable() -> Bool
    {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }
        
        var flags = SCNetworkReachabilityFlags()
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) {
            return false
        }
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        return (isReachable && !needsConnection)
    }
    
    // Render Initial UI
    func renderUI(width: Int, height: Int){
        
        self.collectionView?.backgroundColor = UIColor(white: 0.2, alpha: 1)
        
        self.layout.sectionInset = UIEdgeInsets(top: 0, left: 0.5, bottom: 0, right: 0.5)
        self.layout.itemSize = CGSize(width: width , height: height)
        self.layout.minimumInteritemSpacing = 0
        self.layout.minimumLineSpacing = 0
        collectionView!.collectionViewLayout = self.layout
        
    }
}


