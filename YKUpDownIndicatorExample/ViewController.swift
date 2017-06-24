//
//  ViewController.swift
//  YKUpDownIndicatorExample
//
//  Created by yojkim on 2017. 5. 20..
//  Copyright © 2017년 yojkim. All rights reserved.
//

import UIKit
import YKUpDownIndicator

class ViewController: UIViewController {
    
    @IBOutlet var upDownIndicator: YKUpDownIndicator!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func animateButtonPressed(_ sender: Any) {
        upDownIndicator.animate()
    }
    
    @IBAction func stopButtonPressed(_ sender: Any) {
        upDownIndicator.stop()
    }
}

