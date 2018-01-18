//
//  UIColor+Extension.swift
//  RevealPractice
//
//  Created by 李旭阳 on 2018/1/18.
//  Copyright © 2018年 李文静. All rights reserved.
//

import UIKit

extension UIColor {
    class func RGBA(red:CGFloat,green:CGFloat,blue:CGFloat,alpha:CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}
