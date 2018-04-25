//
//  UIScreenExtension.swift
//  Demo01
//
//  Created by 陈克锋 on 2018/4/25.
//  Copyright © 2018年 陈克锋. All rights reserved.
//

import UIKit

extension UIScreen {
    
    /** 屏幕尺寸 */
    public static var size: CGSize {
        return self.main.bounds.size
    }
    
    /** 屏幕宽度 */
    public static var screenWidth: CGFloat {
        return self.size.width
    }
    
    /** 屏幕高度 */
    public static var screenHeight: CGFloat {
        return self.size.height
    }
    
    /** 导航栏宽度 */
    public static var navigationBarHeight: CGFloat {
        return Int(self.screenHeight) == 812 ? 88 : 64
    }
    
    /** 底部安全区域的高度 */
    public static var bottomSafeHeight: CGFloat {
        return Int(self.screenHeight) == 812 ? 32 : 0
    }
    
}
