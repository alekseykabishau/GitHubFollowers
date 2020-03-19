//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0318..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviews(views: UIView...) {
        for view in views { addSubview(view) }
    }
}
