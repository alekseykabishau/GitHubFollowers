//
//  GFTitleLabel.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0117..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class GFTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero) // convenience init calling designated init
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .label // supports light/dark mode
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
    }

}
