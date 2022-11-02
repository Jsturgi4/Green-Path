//
//  mapViewController.swift
//  GreenTrack
//
//  Created by Randy Martinez on 10/31/22.
//

import UIKit
import MapKit
import CoreLocation
class MapViewController: UIViewController {

    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var getDirections: UIButton!
    
    @IBOutlet weak var map: MKMapView!
    
    
    @IBAction func getDirectionsTapped(_ sender: Any) {
        
    }
    
    func getAddress(){
        let geoCoder = CLGeocoder()
        let address = addressTextField.text
        
        geoCoder.geocodeAddressString(address!) { (placemarks,error)
            in
            guard let placeMarks = placemarks
                    let location = placemarks?.first?.location
            else {
                print("No Location Found")
                return
            }
            print location
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
