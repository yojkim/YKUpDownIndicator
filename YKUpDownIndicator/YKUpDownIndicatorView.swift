//
//  YKUpDownIndicatorLayer.swift
//  YKUpDownIndicator
//
//  Created by yojkim on 2017. 5. 22..
//  Copyright © 2017년 yojkim. All rights reserved.
//

import UIKit

public class YKUpDownIndicatorView: UIView {
    
    private var upDownLayer1 = YKUpDownLayer()
    private var upDownLayer2 = YKUpDownLayer()
    private var upDownLayer3 = YKUpDownLayer()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    private func initialize() {
        upDownLayer1 = YKUpDownLayer(
            frame: CGRect(x: 0, y: 0, width: 10, height: 30),
            startPosition: .Top
        )
        
        upDownLayer2 = YKUpDownLayer(
            frame: CGRect(x: 15, y: 0, width: 10, height: 30),
            startPosition: .Middle
        )
        
        upDownLayer3 = YKUpDownLayer(
            frame: CGRect(x: 30, y: 0, width: 10, height: 30),
            startPosition: .Bottom
        )
        
        self.layer.addSublayer(upDownLayer1)
        self.layer.addSublayer(upDownLayer2)
        self.layer.addSublayer(upDownLayer3)
        
        self.isHidden = true
        
    }
    
    internal func animate() {
        self.upDownLayer1.animate()
        self.upDownLayer2.animate()
        self.upDownLayer3.animate()
        
        self.isHidden = false
    }
    
    internal func stop() {
        self.upDownLayer1.stop()
        self.upDownLayer2.stop()
        self.upDownLayer3.stop()
        
        self.isHidden = true
    }

}
