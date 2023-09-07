//
//  BaseViewController.swift
//  BaseKit
//
//  Created by 장혜성 on 2023/09/07.
//

import UIKit

open class BaseViewController<T: BaseView>: UIViewController {
    
    // deinit 실행 여부 설정
    open var isShowDeinit: Bool { false }
    
    public var mainView: T {
        return view as! T
    }
    
    override public func loadView() {
        view = T.init()
    }

    open override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    open func configureView() { }
    
    deinit {
        if isShowDeinit {
            print("[",String(describing: type(of: self)), "] / [deinit]")
        }
    }
}
