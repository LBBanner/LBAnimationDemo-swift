//
//  RotateController.swift
//  LBAnimationDemo-swift
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

import UIKit

class RotateController: UIViewController {

    var test: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        label.center = view.center
        label.text = test
        label.textColor = UIColor.white
        label.textAlignment = .center
        view.addSubview(label)
        
        let rotate3D = CATransform3DMakeRotation(.pi, 0, 100, 0)
        
        let ani = CABasicAnimation(keyPath: "transform")
        ani.toValue = NSValue(caTransform3D: rotate3D)
        ani.duration = 2
        ani.autoreverses = true
        ani.isCumulative = true
        ani.repeatCount = MAXFLOAT
        ani.fillMode = kCAFillModeForwards
        
        label.layer.add(ani, forKey: nil)
        
    }
    
}
