//
//  ViewController.swift
//  MapKitAssignment
//
//  Created by Pooj on 9/24/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var fromStreet: UITextField!
    
    @IBOutlet weak var fromCity: UITextField!
    
    @IBOutlet weak var fromState: UITextField!
    
    @IBOutlet weak var fromZip: UITextField!
    
    @IBOutlet weak var toStreet: UITextField!
    
    @IBOutlet weak var toCity: UITextField!
   
    @IBOutlet weak var toState: UITextField!
    
    @IBOutlet weak var toZip: UITextField!
    
    var fromAddress : String?
    var toAddress : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fromStreet.text = "185 Estancia drive"
        fromCity.text = "San Jose"
        fromZip.text = "95134"
        fromState.text = "CA"
        
        toStreet.text = "60 Descanso Drive"
        toCity.text = "San Jose"
        toZip.text = "95134"
        toState.text = "CA"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func clickOnMap(_ sender: Any) {
        fromAddress = fromStreet.text! + " " + fromCity.text!
        fromAddress?.append(" " + fromState.text!)
        fromAddress?.append(" " + fromZip.text!)
        
        toAddress = toStreet.text! + " " + toCity.text!
        toAddress?.append(" " + toState.text!)
        toAddress?.append(" " + toZip.text!)
    
        openMaps(fromAddress: fromAddress!, toAddress:toAddress!)
    }
    
    
    @IBAction func clickOnRoute(_ sender: Any) {
        fromAddress = fromStreet.text! + " " + fromCity.text!
        fromAddress?.append(" " + fromState.text!)
        fromAddress?.append(" " + fromZip.text!)
        
        toAddress = toStreet.text! + " " + toCity.text!
        toAddress?.append(" " + toState.text!)
        toAddress?.append(" " + toZip.text!)
        
        driveBetweenPlaces(fromAddress: fromAddress!, toAddress:toAddress!)
    }

    
    /**
     * Open Maps and Route
     **/
    func driveBetweenPlaces(fromAddress: String, toAddress: String) {
         var fromLocation : CLLocationCoordinate2D?
        var toLocation : CLLocationCoordinate2D?
        
        //let currentLoc = self.currentLocation!
        //let currentplacemarks = MKPlacemark(coordinate: currentLoc, addressDictionary: nil)
        
        //From location placemark
        CLGeocoder().geocodeAddressString(fromAddress, completionHandler: {(placemarks, error) in
        
            if error != nil {
                print("Geocode failed with error: \(error!.localizedDescription)")
            } else if placemarks!.count > 0 {
                let placemark = placemarks![0]
                let location = placemark.location!.coordinate
                fromLocation = CLLocationCoordinate2DMake(location.latitude, location.longitude)
                
                let fromPlacemart = MKPlacemark(coordinate: fromLocation!, addressDictionary: nil)
                let frommapItem = MKMapItem(placemark: fromPlacemart)
                frommapItem.name = fromAddress
                
                //To location placemark
                CLGeocoder().geocodeAddressString(toAddress, completionHandler: {(placemarks, error) in
                    
                    if error != nil {
                        print("Geocode failed with error: \(error!.localizedDescription)")
                    } else if placemarks!.count > 0 {
                        let placemark = placemarks![0]
                        let location = placemark.location!.coordinate
                        toLocation = CLLocationCoordinate2DMake(location.latitude, location.longitude)
                        
                        let toPlacemart = MKPlacemark(coordinate: toLocation!, addressDictionary: nil)
                        let tomapItem = MKMapItem(placemark: toPlacemart)
                        tomapItem.name = toAddress
                        
                        
                        let options = [MKLaunchOptionsDirectionsModeKey:
                            MKLaunchOptionsDirectionsModeDriving,
                                       MKLaunchOptionsShowsTrafficKey: true] as [String : Any]
                        
                        let mapItems = [frommapItem, tomapItem]
                        MKMapItem.openMaps(with: mapItems, launchOptions: options)
                    }
                })
                
            }
        })
    }
    
    
    
    /**
     * Open Map
     **/
    func openMaps(fromAddress: String, toAddress: String) {
        performSegue(withIdentifier: "coord", sender: fromAddress)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "coord"{
            let tabBarC : MapKitController = (segue.destination as? MapKitController)!
            tabBarC.fromAddress = fromAddress
            tabBarC.toAddress = toAddress
        }
    }

}

