//
//  UICollectionViewFlowLayout+Extension.swift
//  BaseKit
//
//  Created by 장혜성 on 2023/09/07.
//

import UIKit

extension UICollectionViewFlowLayout {
    
    public func collectionViewLayout(
        itemSize: CGSize,
        sectionInset: UIEdgeInsets,
        minimumLineSpacing: CGFloat,
        minimumInteritemSpacing: CGFloat
    ) -> UICollectionViewFlowLayout {
        return UICollectionViewFlowLayout().setup { view in
            view.itemSize = itemSize
            view.sectionInset = sectionInset
            view.minimumLineSpacing = minimumLineSpacing
            view.minimumInteritemSpacing = minimumInteritemSpacing
        }
    }
}
