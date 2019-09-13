//
//  YKUpDownIndicator.swift
//  YKUpDownIndicator
//
//  Created by yojkim on 2017. 5. 16..
//  Copyright © 2017년 yojkim. All rights reserved.
//

import UIKit

public class YKUpDownIndicator: UIView {
    
    private var indicatorView: YKUpDownIndicatorView!
    public var indicatorColor: UIColor!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        
        self.indicatorView = YKUpDownIndicatorView(
            frame: CGRect(
                x: abs(frame.origin.x - center.x) - 20,
                y: abs(frame.origin.y - center.y) - 15,
                width: 40,
                height: 30
            )
        )
        
        self.addSubview(self.indicatorView)
        
    }
    
    public func animate() {
        self.indicatorView.animate()
    }
    
    public func stop() {
        self.indicatorView.stop()
    }
    
}
