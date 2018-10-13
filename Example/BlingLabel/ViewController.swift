//
//  ViewController.swift
//  BlingLabel
//
//  Created by woshiwwy16@126.com on 10/13/2018.
//  Copyright (c) 2018 woshiwwy16@126.com. All rights reserved.
//

import UIKit
import BlingLabel

class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkingLabel = BlingLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 300))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlingBling()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    @IBAction func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlingBling()
        } else {
            blinkingLabel.startBlingBling()
        }
        isBlinking = !isBlinking
    }
    
}
