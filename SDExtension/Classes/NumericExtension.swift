//
//  NumericExtension.swift
//  Demo01
//
//  Created by 陈克锋 on 2018/4/25.
//  Copyright © 2018年 陈克锋. All rights reserved.
//

import UIKit

/// 模仿小程序rpx做到按比例适配
public protocol RpxAble {
    var rpx: CGFloat {get}
}

extension Int: RpxAble {
    public var rpx: CGFloat {
        return (UIScreen.main.bounds.width / 750) * CGFloat(self)
    }
}

extension Float: RpxAble {
    public var rpx: CGFloat {
        return (UIScreen.main.bounds.width / 750) * CGFloat(self)
    }
}

extension CGFloat: RpxAble {
    public var rpx: CGFloat {
        return (UIScreen.main.bounds.width / 750) * self
    }
}

extension Double: RpxAble {
    public var rpx: CGFloat {
        return (UIScreen.main.bounds.width / 750) * CGFloat(self)
    }
}

