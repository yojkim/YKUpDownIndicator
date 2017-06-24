//
//  YKCircleLayer.swift
//  YKUpDownIndicator
//
//  Created by yojkim on 2017. 5. 17..
//  Copyright © 2017년 yojkim. All rights reserved.
//

import Foundation

class YKCircleLayer: CALayer {
    
    var circle = CALayer()
    var color = UIColor.clear.cgColor
    
    override init() {
        super.init()
        commonInit()
    }
    
    init(frame: CGRect) {
        super.init()
        self.frame = frame
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        circle.frame = bounds
        circle.cornerRadius = bounds.width / 2
        circle.masksToBounds = true
        circle.backgroundColor = color
        addSublayer(circle)
    }
}
