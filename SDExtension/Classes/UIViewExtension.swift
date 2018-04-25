//
//  UIView+CurrentViewController.swift
//  canhu
//
//  Created by 陈克锋 on 2018/4/24.
//  Copyright © 2018年 陈克锋. All rights reserved.
//

import UIKit

extension UIView {
    
    public var viewController: UIViewController? {
        
        for view in sequence(first: self.superview, next: { $0?.superview }) {
            if let responder = view?.next {
                if responder.isKind(of: UIViewController.self){
                    return responder as? UIViewController
                }
            }
        }
        
        return nil
    }
    
    public func addTapGestureRecognizer(_ target: Any?, _ aSelector: Selector?) {
        let ges = UITapGestureRecognizer(target: target, action: aSelector)
        addGestureRecognizer(ges)
    }
}
