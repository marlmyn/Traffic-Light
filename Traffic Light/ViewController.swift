//
//  ViewController.swift
//  Traffic Light
//
//  Created by Akmaral Ergesh on 25.10.2023.
//

import UIKit

enum TrafficColor {
case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var currentColor: TrafficColor = .red
    var lightIsOn = 1.0
    var lightIsOff = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()
      
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
    }

    @IBAction func startActionBtn(_ sender: Any) {
        startButton.setTitle("NEXT", for: .normal)
        
        
        switch currentColor {
            case .red:
                redLight.alpha = lightIsOn
                greenLight.alpha = lightIsOff
                currentColor = .yellow
            case .yellow:
                yellowLight.alpha = lightIsOn
                redLight.alpha = lightIsOff
                currentColor = .green
            case .green:
                greenLight.alpha = lightIsOn
                yellowLight.alpha = lightIsOff
                currentColor = .red
        }
    }
    
}

