//
//  ViewController.swift
//  BullsEye
//
//  Created by Jelle Zwart on 17/02/2020.
//  Copyright © 2020 Black Pearl Applications. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    var targetValue = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet var targetLable: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    @IBAction func showAlert() {
        
        let message = "The value of the slider is now \(currentValue)" +
            "\n The target value is \(targetValue)"
         
    
        let alert = UIAlertController(title: "Hello world!", message: message, preferredStyle: .alert)
    
        let action = UIAlertAction(title: "Awsome", style: .default, handler: nil)
    
        alert.addAction(action)
    
        present(alert,animated: true, completion: nil)
        
        startNewRound()
    }
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        
        updateLabels()
    }
    
    func updateLabels(){
        targetLable.text = String(targetValue)
    }
    
    
    @IBAction func sliderMoved (_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        
        
    }

}

