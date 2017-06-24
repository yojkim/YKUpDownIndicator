//
//  YKUpDownIndicatorLayer.swift
//  YKUpDownIndicator
//
//  Created by yojkim on 2017. 5. 22..
//  Copyright © 2017년 yojkim. All rights reserved.
//

import Foundation

public class YKUpDownIndicatorView: UIView {
    
    private var upDownLayer1 = YKUpDownLayer()
    private var upDownLayer2 = YKUpDownLayer()
    private var upDownLayer3 = YKUpDownLayer()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    private func commonInit() {
        upDownLayer1 = YKUpDownLayer(frame: CGRect(x: 0, y: 0, width: 10, height: 30), startPosition: .Top)
        upDownLayer2 = YKUpDownLayer(frame: CGRect(x: 15, y: 0, width: 10, height: 30), startPosition: .Middle)
        upDownLayer3 = YKUpDownLayer(frame: CGRect(x: 30, y: 0, width: 10, height: 30), startPosition: .Bottom)
        
        layer.addSublayer(upDownLayer1)
        layer.addSublayer(upDownLayer2)
        layer.addSublayer(upDownLayer3)
        
        isHidden = true
        
    }
    
    internal func animate() {
        upDownLayer1.animate()
        upDownLayer2.animate()
        upDownLayer3.animate()
        
        isHidden = false
    }
    
    internal func stop() {
        upDownLayer1.stop()
        upDownLayer2.stop()
        upDownLayer3.stop()
        
        isHidden = true
    }

}
