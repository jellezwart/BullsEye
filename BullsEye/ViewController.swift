//
//  ViewController.swift
//  BullsEye
//
//  Created by Jelle Zwart on 17/02/2020.
//  Copyright © 2020 Black Pearl Applications. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLable: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()
        updateLabels()
    }
    
    @IBAction func showAlert() {
        
        let difference = abs(targetValue - currentValue)
        
        var points = 100 - difference

        score = score + points
        
        let title: String
          if difference == 0 {
            title = "Kei-goed Lenne!"
            points = points + 100
          } else if difference < 5 {
            title = "Oh, jammer... en zo dicht bij..."
            points = points + 50
          } else if difference < 10 {
            title = "Bwa, niet slecht."
          } else {
            title = "Pfff, meende da nu?"
          }
        
        let message = "Je plaatste de slider op \(currentValue)" +
            "\n Het verschil is \(difference)" +
            "\n Je scoorde \(points) punten"
         
    
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
        let action = UIAlertAction(title: "Ok", style: .default, handler: {_ in self.startNewRound()})
    
        alert.addAction(action)
    
        present(alert,animated: true, completion: nil)
        
    }
    
    func startNewRound(){
        round = round + 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        
        updateLabels()
    }
    
    
    @IBAction func startNewGame() {
        round = 0
        score = 0
        startNewRound()
    }
    
    func updateLabels(){
        targetLable.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
    
    @IBAction func sliderMoved (_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        
        
    }

}

