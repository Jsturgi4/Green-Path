//
//  SignInViewController.swift
//  GreenTrack
//
//  Created by Randy Martinez on 11/2/22.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var firstName: CustomTextField!
    
    @IBOutlet weak var lastName: CustomTextField!
    
    @IBOutlet weak var email: CustomTextField!
    
    @IBOutlet weak var password: CustomTextField!
    
    @IBAction func signInSegue(_ sender: Any) {
        performSegue(withIdentifier: "signInSegue", sender: nil)
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
