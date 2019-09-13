//
//  YKUpDownSet.swift
//  YKUpDownIndicator
//
//  Created by yojkim on 2017. 5. 17..
//  Copyright © 2017년 yojkim. All rights reserved.
//

import UIKit

typealias YKSet = YKUpDownSet

internal enum YKUpDownSet {
    
    case Top
    case Middle
    case Bottom
    
    var positionAnimation: CAKeyframeAnimation {
        
        let animation = CAKeyframeAnimation(keyPath: "position.y")
        animation.keyTimes = [0.0, 0.33, 0.66, 1.0]
        animation.duration = 1.0
        animation.isAdditive = true
        animation.repeatCount = .infinity
        
        switch self {
        
        case .Top: animation.values = [0, 20, 10, 0]
        case .Middle: animation.values = [10, 0, 20, 10]
        case .Bottom: animation.values = [20, 10, 0,20]
            
        }
        
        return animation
    }
    
    var opacityAnimation: CAKeyframeAnimation {

        let animation = CAKeyframeAnimation(keyPath: "backgroundColor")
        animation.keyTimes = [0.0, 0.33, 0.66, 1.0]
        animation.duration = 1.0
        animation.isAdditive = true
        animation.repeatCount = .infinity
        
        switch self {
        case .Top: animation.values = [
            YKSet.Top.positionColor,
            YKSet.Bottom.positionColor,
            YKSet.Middle.positionColor,
            YKSet.Top.positionColor
            ]
            
        case .Middle: animation.values = [
            YKSet.Middle.positionColor,
            YKSet.Top.positionColor,
            YKSet.Bottom.positionColor,
            YKSet.Middle.positionColor
            ]
            
        case .Bottom: animation.values = [
            YKSet.Bottom.positionColor,
            YKSet.Middle.positionColor,
            YKSet.Top.positionColor,
            YKSet.Bottom.positionColor
            ]
        }
        
        return animation
        
    }
    
    var positionColor: CGColor {
        switch self {
            
        case .Top: return UIColor(red: 63.0/255.0, green: 76.0/255.0, blue: 176.0/255.0, alpha: 1.0).cgColor
        case .Middle: return UIColor(red: 63.0/255.0, green: 76.0/255.0, blue: 176.0/255.0, alpha: 0.6).cgColor
        case .Bottom: return UIColor(red: 63.0/255.0, green: 76.0/255.0, blue: 176.0/255.0, alpha: 0.3).cgColor
            
        }
    }
    
    var frame: CGRect {
        switch self {
        case .Top: return CGRect(x: 0, y: 0, width: 10, height: 10)
        case .Middle: return CGRect(x: 0, y: 0, width: 10, height: 10)
        case .Bottom: return CGRect(x: 0, y: 0, width: 10, height: 10)
        }
    }
}

internal extension UIColor {
    
    func changeAlpha(_ alpha: CGFloat) -> UIColor {
        return UIColor(
            red: self.ciColor.red,
            green: self.ciColor.green,
            blue: self.ciColor.blue,
            alpha: alpha
        )
    }
    
}
