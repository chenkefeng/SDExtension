//
//  UIColor+HexColor.swift
//  canhu
//
//  Created by 陈克锋 on 2018/4/24.
//  Copyright © 2018年 陈克锋. All rights reserved.
//

import UIKit

extension UIColor {
    
    public convenience init(_ hexString: String, alpha: CGFloat = 1.0) {
        var red: UInt32 = 0
        var green: UInt32 = 0
        var blue: UInt32 = 0
        
        var hex: String = hexString
        if hex.starts(with: "#") {
            let startIndex = hex.startIndex
            hex = String(hex[hex.index(startIndex, offsetBy: 1) ..< hex.index(startIndex, offsetBy: hex.count)])
        }
        if hex.count == 6 {
            let scanner = Scanner(string: hex)
            var result: UInt32 = 0
            
            if scanner.scanHexInt32(&result) {
                red = (result >> 16) & 0xFF
                green = result >> 8 & 0xFF
                blue = result & 0xFF
            }
        }
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
}
