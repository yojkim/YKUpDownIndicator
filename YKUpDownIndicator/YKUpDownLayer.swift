//
//  YKUpDownLayer.swift
//  YKUpDownIndicator
//
//  Created by yojkim on 2017. 5. 17..
//  Copyright © 2017년 yojkim. All rights reserved.
//

import Foundation

class YKUpDownLayer: CALayer {
    
    private var startPosition: YKSet = .Top
    
    var circleView = YKCircleLayer()
    
    override init() {
        super.init()
    }
    
    // Initialize with frame
    init(frame: CGRect) {
        super.init()
        self.frame = frame
        commonInit()
    }
    
    // Initialize with frame and startPosition
    init(frame: CGRect, startPosition: YKSet) {
        super.init()
        self.frame = frame
        self.startPosition = startPosition
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        circleView = YKCircleLayer(frame: self.startPosition.frame)
        addSublayer(circleView)
    }
    
    public func animate() {
        
        CATransaction.begin()
        
        circleView.add(self.startPosition.positionAnimation, forKey: "position_change_y")
        circleView.circle.add(self.startPosition.opacityAnimation, forKey: "backgroundColor_change")
        
        CATransaction.commit()
    }
    
    public func stop() {
        
        circleView.circle.removeAllAnimations()
        circleView.removeAllAnimations()
        
    }
}
