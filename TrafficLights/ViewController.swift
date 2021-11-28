//
//  ViewController.swift
//  TrafficLights
//
//  Created by Sergey Pavlov on 28.11.2021.
//  Copyright © 2021 Sergey Pavlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabel.backgroundColor = .red
        redLabel.alpha = 0.3
        yellowLabel.backgroundColor = .yellow
        yellowLabel.alpha = 0.3
        greenLabel.backgroundColor = .green
        greenLabel.alpha = 0.3
        
        redLabel.layer.cornerRadius = 45
        yellowLabel.layer.cornerRadius = 45
        greenLabel.layer.cornerRadius = 45
        
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont(name: "Optima", size: 35)
        button.setTitle("Start", for: .normal)
    }

    var labelIndex = 0
    @IBAction func buttonTaped() {
        let labelsArray = [redLabel, yellowLabel, greenLabel]
        button.setTitle("Next", for: .normal)
        for label in labelsArray {
            if label?.alpha == 1 {
                label?.alpha = 0.3
            }
        }
        labelsArray[labelIndex]?.alpha = 1
        labelIndex += 1
        if labelIndex > 2 {
            labelIndex = 0
        }
    }
}

