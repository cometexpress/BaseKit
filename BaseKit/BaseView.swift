//
//  BaseView.swift
//  BaseKit
//
//  Created by 장혜성 on 2023/09/07.
//

import UIKit

open class BaseView: UIView {
    
    // deinit 실행 여부 설정
    open var isShowDeinit: Bool { false }
    
    open var viewBg: UIColor { .clear }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = viewBg
        configureView()
        setConstraints()
    }
    
    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func configureView() { }
    open func setConstraints() { }
    
    deinit {
        if isShowDeinit {
            print("[",String(describing: type(of: self)), "] / [deinit]")
        }
    }
}
