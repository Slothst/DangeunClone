//
//  Extension.swift
//  DangeunClone
//
//  Created by 최낙주 on 3/6/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
