//
//  LoginViewController.swift
//  GreenTrack
//
//  Created by Randy Martinez on 10/31/22.
//

import UIKit
import Parse



class LoginViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func signUpSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "signUpAgain", sender: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true {
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        }
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        let userName = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: userName, password: password)
        { (user, error) in
            if user != nil {
                UserDefaults.standard.setValue(true, forKey: "userLoggedIn")
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                self.displayAlert(withTitle: "Error", message: "Wrong Credentials Entered")
                print("Error Logging in ")
            }
        }
        
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextField = self.view.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return false
    }
    func displayAlert(withTitle title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        usernameField.delegate = self
        passwordField.delegate = self
        usernameField.tag = 1
        passwordField.tag = 2
        
        
        
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
