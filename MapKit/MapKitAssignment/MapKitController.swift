//
//  MapKitController.swift
//  MapKitAssignment
//
//  Created by Pooj on 9/26/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapKitController: UIViewController {
    
    
    @IBOutlet weak var mapKitView: MKMapView!
    
    var fromAddress : String?
    var toAddress : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(fromAddress as Any, toAddress as Any)
        
        let searchReq = MKLocalSearchRequest()
        searchReq.naturalLanguageQuery = fromAddress
        let activeSearch = MKLocalSearch(request: searchReq)
        activeSearch.start {(response, error) in
            if response == nil
            {
                print(error!)
            } else{
                let latitude = response?.boundingRegion.center.latitude
                let longitude = response?.boundingRegion.center.longitude
                print(latitude! , longitude!)
                
                let fromcoord = CLLocationCoordinate2D(latitude: latitude!, longitude: longitude!)
                let annotation = MKPointAnnotation()
                annotation.title = self.fromAddress
                annotation.coordinate = fromcoord
                self.mapKitView.addAnnotation(annotation)
                let span = MKCoordinateSpanMake(0.1, 0.1)
                let region = MKCoordinateRegionMake(fromcoord, span)
                self.mapKitView.setRegion(region, animated: true)
            }
        }
        
        searchReq.naturalLanguageQuery = toAddress
        let activeSearch1 = MKLocalSearch(request: searchReq)
        activeSearch1.start {(response, error) in
            if response == nil
            {
                print(error!)
            } else{
                let latitude = response?.boundingRegion.center.latitude
                let longitude = response?.boundingRegion.center.longitude
                print(latitude! , longitude!)
                let tocoord =  CLLocationCoordinate2D(latitude: latitude!, longitude: longitude!)
                
                let annotation = MKPointAnnotation()
                annotation.title = self.toAddress
                annotation.coordinate = tocoord
                self.mapKitView.addAnnotation(annotation)
                let span = MKCoordinateSpanMake(0.1, 0.1)
                let region = MKCoordinateRegionMake(tocoord, span)
                self.mapKitView.setRegion(region, animated: true)
            }
        }
        
       
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    
    
    
}
