//
//  BlingLabel.swift
//  BlingLabel
//
//  Created by Rick Wang on 2018/10/13.
//

import UIKit

public class BlingLabel: UILabel {

    public func startBlingBling() {
        UIView.animate(withDuration: 0.25, delay: 0, options: [UIView.AnimationOptions.repeat, UIView.AnimationOptions.autoreverse], animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlingBling() {
        self.alpha = 1
        self.layer.removeAllAnimations()
    }

}
