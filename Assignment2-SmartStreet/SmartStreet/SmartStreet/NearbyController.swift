//
//  NearbyController.swift
//  SmartStreet
//
//  Created by Pooj on 9/18/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import MapKit

class NearbyController: UIViewController, UITableViewDataSource, UITableViewDelegate,CLLocationManagerDelegate, UISearchBarDelegate {
    
    var searchResult : String?
    var indexOfSelection = 0
    var businesses: [Business]!
    var locationManager: CLLocationManager!
    var long : Double = 0.0, lat : Double = 0.0
    
    
    @IBOutlet weak var tablesView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager  = CLLocationManager()
        
        // Ask for Authorisation from the User.
        //self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters //kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        } else{
            print("Location service disabled");
        }
        
        //self.lat = (locationManager.location?.coordinate.latitude)!
        //self.long = (locationManager.location?.coordinate.longitude)!
        
        tablesView.delegate = self
        tablesView.dataSource = self
        searchBar.delegate = self
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            self.lat = (self.locationManager.location?.coordinate.latitude)!
            self.long = (self.locationManager.location?.coordinate.longitude)!
            
        })
    }

    
    @IBAction func restaurantClick(_ sender: Any) {
        
        if(self.lat != 0.0 || self.long != 0.0) {
            let locationVal = String(self.lat) + "," + String(self.long)
            print("from restaurant \(locationVal)")
            
            Business.searchWithTerm(term: "Restaurant", locationVal: locationVal, completion: { (businesses: [Business]?, error: Error?) -> Void in
                
                self.businesses = businesses
                self.tablesView.reloadData()
                
                if let businesses = businesses {
                    print("Total Found \(businesses.count)");
                }
                
            })
        } else{
            print("ERROR! Location value found nil")
            
        }

    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("searchText \(String(describing: searchBar.text))")
        if(self.lat != 0.0 || self.long != 0.0) {
            let locationVal = String(self.lat) + "," + String(self.long)
            print("from searchBarSearch \(locationVal)")
            
            Business.searchWithTerm(term: searchBar.text!, locationVal: locationVal, completion: { (businesses: [Business]?, error: Error?) -> Void in
                
                self.businesses = businesses
                self.tablesView.reloadData()
                
                if let businesses = businesses {
                    print("Total Found \(businesses.count)");
                }
                
            })
        } else{
            print("ERROR! Location value found nil")
            
        }

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if businesses != nil{
            return businesses.count
        } else {
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tablesView.dequeueReusableCell(withIdentifier: "BusinessCell", for: indexPath) as! BusinessCell
        
        cell.business = businesses[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TODO
       
        indexOfSelection = indexPath.row
        self.openMapForPlace(searchResult: businesses[indexOfSelection])
    }

    
    @IBAction func doctorClick(_ sender: Any) {
        
        if(self.lat != 0.0 || self.long != 0.0) {
            let locationVal = String(self.lat) + "," + String(self.long)
            print("from doctor \(locationVal)")
            
            Business.searchWithTerm(term: "Doctor", locationVal: locationVal, completion: { (businesses: [Business]?, error: Error?) -> Void in
                
                self.businesses = businesses
                self.tablesView.reloadData()
                
                if let businesses = businesses {
                    print("Total Found \(businesses.count)");
                }
                
            })
        } else{
            print("ERROR! Location value found nil")
            
        }

    }
    
    
    @IBAction func shoppingClick(_ sender: Any) {
        
        if(self.lat != 0.0 || self.long != 0.0) {
            let locationVal = String(self.lat) + "," + String(self.long)
            print("from shopping \(locationVal)")
            
            Business.searchWithTerm(term: "Shopping", locationVal: locationVal, completion: { (businesses: [Business]?, error: Error?) -> Void in
                
                self.businesses = businesses
                self.tablesView.reloadData()
                
                if let businesses = businesses {
                    print("Total Found \(businesses.count)");
                }
                
            })
        } else{
            print("ERROR! Location value found nil")
            
        }

    }
    
    @IBAction func gasClick(_ sender: Any) {
        
        if(self.lat != 0.0 || self.long != 0.0) {
            let locationVal = String(self.lat) + "," + String(self.long)
            print("from gas \(locationVal)")
            
            Business.searchWithTerm(term: "Gas Station", locationVal: locationVal, completion: { (businesses: [Business]?, error: Error?) -> Void in
                
                self.businesses = businesses
                self.tablesView.reloadData()
                
                if let businesses = businesses {
                    print("Total Found \(businesses.count)");
                }
                
            })
        } else{
            print("ERROR! Location value found nil")
            
        }

    }
    
    @IBAction func repair(_ sender: Any) {
            if(self.lat != 0.0 || self.long != 0.0) {
            let locationVal = String(self.lat) + "," + String(self.long)
            print("from repair \(locationVal)")
            
            Business.searchWithTerm(term: "Repair Center", locationVal: locationVal, completion: { (businesses: [Business]?, error: Error?) -> Void in
                
                self.businesses = businesses
                self.tablesView.reloadData()
                
                if let businesses = businesses {
                    print("Total Found \(businesses.count)");
                }
                
            })
        } else{
            print("ERROR! Location value found nil")
            
        }

    }
    
   /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let category : MapController = (segue.destination as? MapController)!
     
        if let cell = sender as? UITableViewCell, let indexPath = tablesView.indexPath(for: cell) {
            //let address =  businesses[indexPath.row].address
            category.searchResult = businesses[indexPath.row]
        }
       
     }*/
    
  
    
    func openMapForPlace(searchResult : Business) {
        
        let latitude: CLLocationDegrees = 37.334293
        let longitude: CLLocationDegrees = -121.886368
        
        let regionDistance:CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = searchResult.name
        mapItem.openInMaps(launchOptions: options)
    }


}
