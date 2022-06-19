//
//  ViewController.swift
//  TrafficLight
//
//  Created by Sergei Volotka on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {

    let currentAlpha: CGFloat = 0.1
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 60
        yellowLight.layer.cornerRadius = 60
        greenLight.layer.cornerRadius = 60
        
        redLight.alpha = currentAlpha
        greenLight.alpha = currentAlpha
        yellowLight.alpha = currentAlpha
        
        startButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

  
    @IBAction func startButtonTapped() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        if redLight.alpha == yellowLight.alpha {
            redLight.alpha = CGFloat(MAXFLOAT)
            greenLight.alpha = currentAlpha
        }
        else if redLight.alpha > currentAlpha && yellowLight.alpha == greenLight.alpha {
            yellowLight.alpha = CGFloat(MAXFLOAT)
            redLight.alpha = currentAlpha
        }
        else if yellowLight.alpha > currentAlpha && greenLight.alpha == redLight.alpha {
            greenLight.alpha = CGFloat(MAXFLOAT)
            yellowLight.alpha = currentAlpha
        }
    }
    
}

