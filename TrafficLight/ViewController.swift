//
//  ViewController.swift
//  TrafficLight
//
//  Created by Stanislav Testov on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightsStackView: UIStackView!
    @IBOutlet weak var startButton: UIButton!
    
    private var light: Lights = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for view in lightsStackView.arrangedSubviews {
            view.alpha = 0.3
        }
        startButton.layer.cornerRadius = 35
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        for view in lightsStackView.arrangedSubviews {
            view.layer.cornerRadius = view.frame.height/2
        }
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        switchingLights()
    }
    
    
}
    
    

extension ViewController {
    
    enum Lights {
        case red
        case yellow
        case green
    }
    
    private func switchingLights() {
        switch light {
        case .red:
            lightsStackView.arrangedSubviews[0].alpha = 1
            lightsStackView.arrangedSubviews[1].alpha = 0.3
            lightsStackView.arrangedSubviews[2].alpha = 0.3
            light = .yellow
        case .yellow:
            lightsStackView.arrangedSubviews[0].alpha = 0.3
            lightsStackView.arrangedSubviews[1].alpha = 1
            lightsStackView.arrangedSubviews[2].alpha = 0.3
            light = .green
        case .green:
            lightsStackView.arrangedSubviews[0].alpha = 0.3
            lightsStackView.arrangedSubviews[1].alpha = 0.3
            lightsStackView.arrangedSubviews[2].alpha = 1
            light = .red
        }
    }
}
