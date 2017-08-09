//
//  ViewController.swift
//  LBAnimationDemo-swift
//
//  Created by 凌斌 on 09/08/2017.
//  Copyright © 2017 LBBanner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = self.datas
        view.addSubview(self.demoTableView)
    }
    
    //MARK: - lazy load
    
    lazy var demoTableView: UITableView = {
        let demoTableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        demoTableView.delegate = self
        demoTableView.dataSource = self
        demoTableView .register(UITableViewCell.self, forCellReuseIdentifier: "CellReuseIdentifier")
        return demoTableView
    }()
    
    lazy var datas: [String] = {
        let datas = ["1.闪烁动画",
                     "2.位移动画",
                     "3.缩放动画",
                     "4.旋转动画",
                     "5.路径动画"]
        return datas
    }()
}

extension ViewController: UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellReuseIdentifier", for: indexPath)
        cell.textLabel?.text = self.datas[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datas.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        let title = self.datas[index]
        
        switch index {
        case 0:
            let VC = BlinkController()
            VC.test = title
            VC.navigationItem.title = title
            navigationController?.pushViewController(VC, animated: true)
        case 1:
            let VC = MoveController()
            VC.test = title
            VC.navigationItem.title = title
            navigationController?.pushViewController(VC, animated: true)
        case 2:
            let VC = ZoomController()
            VC.test = title
            VC.navigationItem.title = title
            navigationController?.pushViewController(VC, animated: true)
        case 3:
            let VC = RotateController()
            VC.test = title
            VC.navigationItem.title = title
            navigationController?.pushViewController(VC, animated: true)
        case 4:
            let VC = PathController()
            VC.test = title
            VC.navigationItem.title = title
            navigationController?.pushViewController(VC, animated: true)
        default:
            break
            
        }
    }
}

