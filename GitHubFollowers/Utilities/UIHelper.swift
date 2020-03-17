//
//  UIHelper.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0205..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

// can be enum in order to avoid empty initialization
struct UIHelper {
    
    static func createThreeColumnFlowLayout(view: UIView) -> UICollectionViewFlowLayout {
        
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minItemSpacing: CGFloat = 10
        let availableWidth = width - padding * 2 - minItemSpacing * 2
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        return flowLayout
    }
}
