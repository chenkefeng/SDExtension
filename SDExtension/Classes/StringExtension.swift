//
//  StringExtension.swift
//  Demo01
//
//  Created by 陈克锋 on 2018/4/25.
//  Copyright © 2018年 陈克锋. All rights reserved.
//

import Foundation

extension String {
    
    /** 去除多余的空格 */
    public var trimmed: String {
        let result = self.trimmingCharacters(in: .nonBaseCharacters)
        return result.replacingOccurrences(of: " ", with: "")
    }
    
    
}
