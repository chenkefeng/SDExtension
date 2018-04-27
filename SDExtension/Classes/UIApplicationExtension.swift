//
//  UIApplicationExtension.swift
//  Pods-SDExtension_Example
//
//  Created by 陈克锋 on 2018/4/26.
//

import UIKit

extension UIApplication {
    
    public var rootViewController: UIViewController? {
        return UIApplication.shared.keyWindow?.rootViewController
    }
    
    /// 切换跟控制器
    ///
    /// - Parameters:
    ///   - viewController: 新的根控制器
    ///   - options: 动画选项
    public func switchRootVc(_ viewController: UIViewController, duration: TimeInterval = 0.3, options: UIViewAnimationOptions = UIViewAnimationOptions.transitionCrossDissolve) {
        guard let window = UIApplication.shared.keyWindow else { return }
        
        UIView.transition(with: window, duration: duration, options: options, animations: {
            let state = UIView.areAnimationsEnabled
            UIView.setAnimationsEnabled(false)
            window.rootViewController = viewController
            UIView.setAnimationsEnabled(state)
        }) { (_) in
            
        }
    }
    
    /// cache目录
    public static var cacheDir: String? {
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).last
    }
    
    /// document目录
    public static var documentDir: String? {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last
    }
}
