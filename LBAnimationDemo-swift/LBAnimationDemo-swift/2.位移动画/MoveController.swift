//
//  MoveController.swift
//  LBAnimationDemo-swift
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

import UIKit

class MoveController: UIViewController {

    var test: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: 100, y: 150, width: 200, height: 50))
        label.center = view.center
        label.text = test
        label.textColor = UIColor.white
        label.textAlignment = .center
        view.addSubview(label)
        
        let ani = CABasicAnimation(keyPath: "transform.translation.x")
        ani.toValue = NSNumber(floatLiteral: 120)
        ani.duration = 6
        ani.isRemovedOnCompletion = true
        ani.repeatCount = MAXFLOAT
        ani.fillMode = kCAFillModeForwards
        ani.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        
        label.layer.add(ani, forKey: nil)

    }
}
