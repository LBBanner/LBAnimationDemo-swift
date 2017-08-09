//
//  BlinkController.swift
//  LBAnimationDemo-swift
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

import UIKit

class BlinkController: UIViewController {

    var test: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        label.center = view.center
        label.text = test
        label.textColor = UIColor.white
        label.textAlignment = .center
        view.addSubview(label)
        
        let ani = CABasicAnimation(keyPath: "opacity")
        ani.fromValue = NSNumber(floatLiteral: 1)
        ani.toValue = NSNumber(floatLiteral: 0.2)
        ani.autoreverses = true
        ani.duration = 1
        ani.repeatCount = MAXFLOAT
        ani.isRemovedOnCompletion = true
        ani.fillMode = kCAFillModeForwards
        ani.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        
        label.layer.add(ani, forKey: nil)

    }

}
