//
//  NearbyViewController.swift
//  tab test
//
//  Created by Macbook Pro on 18/03/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class NearbyViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet var nearbyMap: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        // Do any additional setup after loading the view.
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:[CLLocation]) {
        
        let location = locations[0]
        let center = location.coordinate
    
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: center, span: span)
        
        
        
        nearbyMap.setRegion(region, animated: true)
        nearbyMap.showsUserLocation = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
