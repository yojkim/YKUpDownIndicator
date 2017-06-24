//
//  YKUpDownIndicator.swift
//  YKUpDownIndicator
//
//  Created by yojkim on 2017. 5. 16..
//  Copyright © 2017년 yojkim. All rights reserved.
//

import Foundation

public class YKUpDownIndicator: UIView {
    
    private var indicatorView: YKUpDownIndicatorView!
    public var indicatorColor: UIColor!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        
        indicatorView = YKUpDownIndicatorView(frame: CGRect(x: abs(frame.origin.x - center.x) - 20,
                                                            y: abs(frame.origin.y - center.y) - 15,
                                                            width: 40,
                                                            height: 30))
        addSubview(indicatorView)
        
    }
    
    public func animate() {
        indicatorView.animate()
    }
    
    public func stop() {
        indicatorView.stop()
    }
}
