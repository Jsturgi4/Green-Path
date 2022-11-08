//
//  ProfileViewViewController.swift
//  GreenTrack
//
//  Created by Randy Martinez on 11/7/22.
//

import UIKit
import Parse

class ProfileViewController: UIViewController {

    @IBAction func onLogOut(_ sender: Any) {
        performSegue(withIdentifier: "logOut", sender: nil)
        PFUser.logOut()
        UserDefaults.standard.set(false, forKey: "userLoggedIn")
    }
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameOfUser: UILabel!
    

    
    func setName() {
        let currentUser = PFUser.current()!
        let name = "\(currentUser["firstName"] as! String) \(currentUser["lastName"] as! String)"
        nameOfUser.text = name
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setName()
        profileImage.layer.cornerRadius = profileImage.frame.size.width / 2
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
