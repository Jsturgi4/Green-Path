//
//  SignInViewController.swift
//  GreenTrack
//
//  Created by Randy Martinez on 11/2/22.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstName: CustomTextField!
    
    @IBOutlet weak var lastName: CustomTextField!
    
    @IBOutlet weak var email: CustomTextField!
    
    @IBOutlet weak var password: CustomTextField!
    
    @IBOutlet weak var confirmPassword: CustomTextField!
    
    @IBOutlet weak var indicatorSignup: UIActivityIndicatorView!
    
    @IBAction func signInSegue(_ sender: Any) {
        performSegue(withIdentifier: "signInSegue", sender: nil)
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = email.text!
        user.password = password.text!
        user.email = email.text!
        user[ "firstName"] = firstName.text!
        user["lastName"] = lastName.text!
        
        
        
        // first create a PFUser and give it the attributes put in the function,
        // next set the password, but before that we have to check that the passwords actually match
        
        user.signUpInBackground {(succeeded: Bool, error: Error?) -> Void in
            if let error = error {
                self.displayAlert(withTitle: "Error", message: error.localizedDescription)
            } else {
                self.performSegue(withIdentifier: "signUpSegue", sender: nil)
                self.displayAlert(withTitle: "Success", message: "Account has been successfully created")
            }
        }
        
        
        
    }
    
    func logOut(_ sender: Any){
        PFUser.logOut()
    }
    func displayAlert(withTitle title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true)
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
