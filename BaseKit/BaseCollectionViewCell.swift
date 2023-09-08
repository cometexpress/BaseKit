//
//  BaseCollectionViewCell.swift
//  BaseKit
//
//  Created by 장혜성 on 2023/09/07.
//

import UIKit

open class BaseCollectionViewCell<T>: UICollectionViewCell {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        setConstraints()
    }
    
    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func configureView() {}
    
    open func setConstraints() {}
    
    open func configCell(row: T) {}
}
