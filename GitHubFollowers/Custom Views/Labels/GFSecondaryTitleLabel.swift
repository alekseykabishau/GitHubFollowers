//
//  GFSecondaryTitleLabel.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0213..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(fontSize: CGFloat) {
        self.init(frame: .zero) // convenience init calling designated init
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }
    
    
    func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
    }
}
