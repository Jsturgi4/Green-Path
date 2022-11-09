//
//  mapViewController.swift
//  GreenTrack
//
//  Created by Randy Martinez on 10/31/22.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController,CLLocationManagerDelegate {
    
    
    @IBAction func performGoSegue(_ sender: Any) {
        performSegue(withIdentifier: "goSegue", sender: nil)
    }
    
    @IBAction func performProfileSegue(_ sender: Any) {
        
    }
    
    
    
    
    
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    
    @IBOutlet weak var map: MKMapView!
    
    @IBAction func getDirectionsButton(_ sender: Any) {
    }
    var locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goButton.layer.cornerRadius = goButton.frame.size.width / 2
        profileButton.layer.cornerRadius = profileButton.frame.size.width / 2
        
        
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
 }

