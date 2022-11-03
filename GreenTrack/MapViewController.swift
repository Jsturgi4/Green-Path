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

  
    
    @IBOutlet weak var addressTextField: UITextField!
    
    
    @IBOutlet weak var getDirections: UIButton!
    
    @IBOutlet weak var map: MKMapView!
    
    @IBAction func getDirectionsButton(_ sender: Any) {
    }
    var locationManager = CLLocationManager()
    
     
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    func getAddress(){
        let geoCoder = CLGeocoder()
        let address = addressTextField.text
        
        geoCoder.geocodeAddressString(address!) { (placemarks,error)
            in
            guard let placemarks = placemarks,
            let location = placemarks.first?.location
            else {
                print("No Location Found")
                return
            }
            print(location)
        }
    }
}
