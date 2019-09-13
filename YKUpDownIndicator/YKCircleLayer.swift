//
//  YKCircleLayer.swift
//  YKUpDownIndicator
//
//  Created by yojkim on 2017. 5. 17..
//  Copyright © 2017년 yojkim. All rights reserved.
//

import UIKit

class YKCircleLayer: CALayer {
    
    var circle = CALayer()
    var color = UIColor.clear.cgColor
    
    init(frame: CGRect = .zero) {
        super.init()
        self.frame = frame
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        self.circle.frame = bounds
        self.circle.cornerRadius = bounds.width / 2
        self.circle.masksToBounds = true
        self.circle.backgroundColor = color
        addSublayer(self.circle)
    }
    
}
