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
    
    
    private var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for view in lightsStackView.arrangedSubviews {
            view.alpha = 0.3
        }
        startButton.layer.cornerRadius = 35
        
        index = lightsStackView.arrangedSubviews.count - 1
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        for view in lightsStackView.arrangedSubviews {
            view.layer.cornerRadius = view.frame.height/2
        }
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        lightsStackView.arrangedSubviews[index].alpha = 0.3
        
        if index >= lightsStackView.arrangedSubviews.count - 1 {
            index = 0
        } else {
            index += 1
        }
        
        lightsStackView.arrangedSubviews[index].alpha = 1
    }
    
}
    
