//
//  ViewController.swift
//  RevealPractice
//
//  Created by 李旭阳 on 2018/1/8.
//  Copyright © 2018年 李文静. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.item(imageName: "category", title: nil, target: self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)))
        self.revealViewController().rearViewRevealWidth = 109
        self.revealViewController().rearViewRevealOverdraw = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

