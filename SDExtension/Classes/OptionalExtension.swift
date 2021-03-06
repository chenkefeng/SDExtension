//
//  OptionalExtension.swift
//  Demo01
//
//  Created by 陈克锋 on 2018/4/25.
//  Copyright © 2018年 陈克锋. All rights reserved.
//

import Foundation

extension Optional where Wrapped == String {
    public var isNilOrEmpty: Bool {
        return self == nil ? true : self!.isEmpty
    }
    public var value: String {
        return self == nil ? "" : self!
    }
    public var count: Int {
        return self == nil ? 0 : self!.count
    }
}

extension Optional where Wrapped: Collection {
    public var isNilOrEmpty: Bool {
        return self == nil ? true : self!.isEmpty
    }
    public var count: Int {
        return self == nil ? 0 : self!.count
    }
}
