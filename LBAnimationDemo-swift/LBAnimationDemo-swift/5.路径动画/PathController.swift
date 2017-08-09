//
//  PathController.swift
//  LBAnimationDemo-swift
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

import UIKit

class PathController: UIViewController {

    var test: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        label.center = view.center
        label.text = test
        label.textColor = UIColor.white
        label.textAlignment = .center
        view.addSubview(label)
        
        let myPath = CGMutablePath()
        myPath.move(to: CGPoint(x: 100, y: 330))
        myPath.addCurve(to: CGPoint(x: 50, y: 0), control1: CGPoint(x: 50, y: 100), control2: CGPoint(x: 0, y: 100))
        
        let ani = CAKeyframeAnimation(keyPath: "position")
        ani.path = myPath
        ani.isRemovedOnCompletion = false
        ani.fillMode = kCAFillModeForwards
        ani.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        ani.autoreverses = true
        ani.duration = 6
        ani.repeatCount = MAXFLOAT
        
        label.layer.add(ani, forKey: nil)
    }

}
