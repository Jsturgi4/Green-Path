//
//  ViewController.swift
//  GreenTrack
//
//  Created by Randy Martinez on 10/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let but = UIButton(type: .close)
        but.translatesAutoresizingMaskIntoConstraints = false
        return but
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSubview(button)
        
    }
    
    
            
    func createButton () {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 60 , y: 360, width: 240, height: 40)
        button.backgroundColor = .red
        button.setTitle("Hello", for: .normal)
        self.view.addSubview(button)
    }
}

