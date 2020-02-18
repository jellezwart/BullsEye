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
    
    var currentValue: Int = 0

    @IBAction func showAlert() {
        
        let message = "The value of the slider is now \(currentValue)"
    
    let alert = UIAlertController(title: "Hello world!", message: message, preferredStyle: .alert)
    
    let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
    
    alert.addAction(action)
    
    present(alert,animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved (_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        
        
    }

}

