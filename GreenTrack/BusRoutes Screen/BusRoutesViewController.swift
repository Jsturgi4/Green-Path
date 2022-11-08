//
//  busRoutesviewControllerViewController.swift
//  GreenTrack
//
//  Created by Randy Martinez on 11/7/22.
//

import UIKit

class BusRoutesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Bus route page lanching...")
        getAPIData()
    }
    
    func getAPIData(){
        API.getBuses() { (buses) in
            guard let buses = buses else {
                return
            }
        }
        print(buses.self())
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
