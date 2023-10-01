//
//  UIButton.swift
//  Calculator
//
//  Created by calmkeen on 2023/09/11.
//

import UIKit
@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
          
        }
    }
}
