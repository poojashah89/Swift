//
//  InteractController.swift
//  SmartStreet
//
//  Created by Pooj on 9/20/17.
//  Copyright © 2017 Pooj. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import MapKit

class InteractController: UIViewController, UITableViewDelegate, UITableViewDataSource ,CLLocationManagerDelegate {
    var list = ["Mission College" , "SJSU                  "]
    
    @IBOutlet weak var treeTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        treeTable.delegate = self
        treeTable.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return list.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "trees")
        
        
        cell.textLabel?.text = list[indexPath.row] + "   Light Sensor: OFF"
        
        return cell;
    }
    
    override func viewDidAppear(_ animated: Bool) {
        treeTable.reloadData()
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        openMapForPlace(treeLocation: list[indexPath.row])
    }
    
    func openMapForPlace(treeLocation : String?) {
        
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
        mapItem.name = treeLocation!
        mapItem.openInMaps(launchOptions: options)
    }
    
}
