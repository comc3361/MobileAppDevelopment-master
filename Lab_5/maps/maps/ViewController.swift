//
//  ViewController.swift
//  maps
//
//  Created by Connor Flynn Mcguinness on 10/8/15.
//  Copyright (c) 2015 Connor McGuinness. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var annotation = MKPointAnnotation()
    
    override func viewDidLoad() {
        
        mapView.mapType = MKMapType.Hybrid //load hybrid map in map view
        var status: CLAuthorizationStatus = CLLocationManager.authorizationStatus()
        if status == CLAuthorizationStatus.NotDetermined {
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //set desired accuracy
        locationManager.distanceFilter = kCLDistanceFilterNone //specify distance device must move laterally (in meters) to generate an update. We chose to be notified of all movements
        mapView.showsUserLocation = true
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        let span = MKCoordinateSpanMake(0.05, 0.05) //defines area spanned by map region
        let region = MKCoordinateRegionMake(manager.location.coordinate, span) //region of map that is displayed
        mapView.setRegion(region, animated: true) //animates changning the currently visible region
        
        annotation.coordinate = manager.location.coordinate
        annotation.title = "You are here"
        annotation.subtitle = "Latitude: \(manager.location.coordinate.latitude), Longitude: \(manager.location.coordinate.longitude)"
        mapView.addAnnotation(annotation)

    
    }
    
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.AuthorizedWhenInUse {
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        var errorType = String()
        if let clError = CLError(rawValue: error.code) {
            if clError == .Denied {
                errorType = "access denied"
                let alert = UIAlertController(title: "Error", message: errorType, preferredStyle: UIAlertControllerStyle.Alert)
                let okAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            }
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

