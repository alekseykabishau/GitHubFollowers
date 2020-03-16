//
//  GFBodyLabel.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0117..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment) {
        self.init(frame: .zero) // convenience init calling designated init
        self.textAlignment = textAlignment
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        lineBreakMode = .byWordWrapping
        font = UIFont.preferredFont(forTextStyle: .body)
    }

}
