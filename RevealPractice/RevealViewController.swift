
//  RevealViewController.swift
//  RevealPractice
//
//  Created by 李旭阳 on 2018/1/16.
//  Copyright © 2018年 李文静. All rights reserved.
//

import UIKit

class RevealViewController: SWRevealViewController, SWRevealViewControllerDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.rearViewRevealOverdraw = 0.0
        self.tapGestureRecognizer()
        self.panGestureRecognizer()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func revealController(_ revealController: SWRevealViewController!, willMoveTo position: FrontViewPosition) {
        if position == .right {
            revealController.frontViewController.view.alpha = 0.9
            revealController.frontViewController.view.isUserInteractionEnabled = false
        }
        else {
            revealController.frontViewController.view.alpha = 1.0
            revealController.frontViewController.view.isUserInteractionEnabled = true
        }
    }
    
    func revealController(_ revealController: SWRevealViewController!, panGestureMovedToLocation location: CGFloat, progress: CGFloat, overProgress: CGFloat) {
        print("progress: \(progress)")
        revealController.frontViewController.view.alpha = 1.0 - (progress * 0.2)
    }

}
