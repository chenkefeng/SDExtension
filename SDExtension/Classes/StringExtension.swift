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
    
    /** 是否是手机号码 */
    public var isMobile: Bool {
        if count == 0 {  return false }
        let mobile = "^(13[0-9]|15[0-9]|17[0-9]|18[0-9]|147)\\d{8}$"
        let regexMobile = NSPredicate(format: "SELF MATCHES %@",mobile)
        return regexMobile.evaluate(with: self)
    }
    
    /** 是否是邮箱*/
    public var isEmail: Bool {
        return range(of: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}",
                     options: .regularExpression, range: nil, locale: nil) != nil
    }
    
    /** 判断是否包含Emoji */
    public var containEmoji: Bool {
        for scalar in unicodeScalars {
            switch scalar.value {
            case 0x3030, 0x00AE, 0x00A9, // Special Characters
            0x1D000...0x1F77F, // Emoticons
            0x2100...0x27BF, // Misc symbols and Dingbats
            0xFE00...0xFE0F, // Variation Selectors
            0x1F900...0x1F9FF: // Supplemental Symbols and Pictographs
                return true
            default:
                continue
            }
        }
        return false
    }
    
    /** 是否包含中文 */
    public var containChinese: Bool {
        for scalar in unicodeScalars {
            switch scalar.value {
            case 0x4e00 ... 0x9fff:
                return true
            default:
                continue
            }
        }
        return false
    }
    
    /** 拼接路径 */
    public func appendingPathComponent(_ component: String) -> String{
        return (self as NSString).appendingPathComponent(component)
    }
    
    /** 解码base64*/
    public var base64Decoded: String? {
        guard let decodedData = Data(base64Encoded: self) else { return nil }
        return String(data: decodedData, encoding: .utf8)
    }
    
    /** 编码base64*/
    public var base64Encoded: String? {
        let plainData = data(using: .utf8)
        return plainData?.base64EncodedString()
    }
    
    /** url整体解码 */
    public var uriComponentDecoded: String {
        return removingPercentEncoding ?? self
    }
    
    /** url整体编码 */
    public var uriComponentEncoded: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    
    /** 参数中文处理 */
    public var uriEncoded: String {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlFragmentAllowed)!
    }
    
    /** 中文参数解码 */
    public var uriDecoded: String {
        return (self as NSString).removingPercentEncoding ?? self
    }
    
}
