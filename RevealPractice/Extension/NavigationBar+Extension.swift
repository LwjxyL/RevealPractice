//
//  NavigationBar+Extension.swift
//  RevealPractice
//
//  Created by 李旭阳 on 2018/1/18.
//  Copyright © 2018年 李文静. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    static func item(imageName: String?, title: String?, target: AnyObject?, action: Selector,cancelHighLight: Selector? = nil) -> UIBarButtonItem {
        let btn = UIButton()
        btn.addTarget(target, action: action, for: .touchUpInside)
        if let cancel = cancelHighLight {
            btn.addTarget(target, action: cancel, for: .allTouchEvents)
        }
        
        btn.setTitle(title, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        btn.setTitleColor(UIColor.white, for: .normal)

        if let name = imageName {
            btn.setImage(UIImage.init(named: name), for: .normal)
            btn.setImage(UIImage.init(named: name), for: .highlighted)
            btn.setImage(UIImage.init(named: "\(name)_selected"), for: .selected)
        }
        if let _ = title {
            btn.sizeToFit()
        } else {
            btn.frame.size = CGSize(width: 30, height: 30)
        }
        return UIBarButtonItem.init(customView: btn)
    }
}
