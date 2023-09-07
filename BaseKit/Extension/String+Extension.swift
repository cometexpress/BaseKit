//
//  String+Extension.swift
//  BaseKit
//
//  Created by 장혜성 on 2023/09/07.
//

import Foundation

extension String {
    
    func localized(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    func localized(with arguments: [CVarArg] = [], comment: String = "") -> String {
        return String(format: self.localized(comment: comment), arguments: arguments)
    }
}
