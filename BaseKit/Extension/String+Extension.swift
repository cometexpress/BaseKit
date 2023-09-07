//
//  String+Extension.swift
//  BaseKit
//
//  Created by 장혜성 on 2023/09/07.
//

import Foundation

extension String {
    
    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    public func localized(with arguments: [CVarArg] = []) -> String {
        return String(format: self.localized, arguments: arguments)
    }
}
