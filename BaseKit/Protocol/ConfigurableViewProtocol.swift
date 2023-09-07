//
//  ConfigurableViewProtocol.swift
//  BaseKit
//
//  Created by 장혜성 on 2023/09/07.
//

import UIKit

public protocol ConfigurableViewProtocol { }
extension ConfigurableViewProtocol {
    @discardableResult
    public func setup(_ block: (_ view: Self) -> Void) -> Self {
        block(self)
        return self
    }
}
extension UIView: ConfigurableViewProtocol { }
extension UICollectionViewLayout: ConfigurableViewProtocol { }
