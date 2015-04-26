//
//  Extensions.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/25/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hex: NSInteger) {
        self.init(hex: hex, alpha: 1.0)
    }
    
    convenience init (hex: NSInteger, alpha: CGFloat) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0xFF00) >> 8) / 255.0
        let blue = CGFloat((hex & 0xFF)) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}