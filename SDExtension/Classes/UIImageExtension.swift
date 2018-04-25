//
//  UIImage+Color.swift
//  canhu
//
//  Created by 陈克锋 on 2018/4/24.
//  Copyright © 2018年 陈克锋. All rights reserved.
//

import UIKit

extension UIImage {
   
    public static func image(with colors: [UIColor], start: CGPoint, end: CGPoint) -> UIImage? {
        let cgColors = colors.compactMap { return $0.cgColor }
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 1, height: 1), true, 0)
        defer {
            UIGraphicsEndImageContext()
        }
        
        let context = UIGraphicsGetCurrentContext()
        guard let gradient = CGGradient(colorsSpace: cgColors.last?.colorSpace, colors: cgColors as CFArray, locations: nil) else {
            return nil
        }
        context?.drawLinearGradient(gradient, start: start, end: end, options: .drawsBeforeStartLocation)
        
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
    public static func image(with color: UIColor) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 1, height: 1), true, 0)
        defer {
            UIGraphicsEndImageContext()
        }
        
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(CGRect(origin: .zero, size: CGSize(width: 1, height: 1)))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
}
