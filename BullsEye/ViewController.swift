//
//  ViewController.swift
//  BullsEye
//
//  Created by Jelle Zwart on 17/02/2020.
//  Copyright © 2020 Black Pearl Applications. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
    
    let alert = UIAlertController(title: "Hello world!", message: "This is my first app", preferredStyle: .alert)
    
    let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
    
    alert.addAction(action)
    
    present(alert,animated: true, completion: nil)
    }

}

