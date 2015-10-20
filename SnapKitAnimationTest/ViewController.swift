//
//  ViewController.swift
//  SnapKitAnimationTest
//
//  Created by Dylan Lewis on 20/10/2015.
//  Copyright © 2015 Dylan Lewis. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var animatingView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupViews()
    }

    override func viewDidAppear(animated: Bool) {
        self.layoutForSecondPosition()
        
        UIView.animateWithDuration(1) { () -> Void in
            self.view.layoutIfNeeded()
        }
    }
    
    func setupViews() {
        self.view.addSubview(self.animatingView)
        
        self.customsie()
        self.layoutForFirstPosition()
    }

    func customsie() {
        self.animatingView.backgroundColor = .blackColor()
    }
    
    func layoutForFirstPosition() {
        self.animatingView.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.view.snp_top).offset(50)
            make.leading.equalTo(self.view.snp_leading).offset(50)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
    }
    
    func layoutForSecondPosition() {
        self.animatingView.snp_remakeConstraints { (make) -> Void in
            make.centerX.equalTo(self.view.snp_centerX)
            make.centerY.equalTo(self.view.snp_centerY)
            make.height.equalTo(100)
            make.width.equalTo(100)
        }
    }
}

