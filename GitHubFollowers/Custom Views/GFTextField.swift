//
//  GFTextField.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0114..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label // black in light mode and white in dark mode
        tintColor = .label // blinking cursor
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true // will make the text smaller in case if it's too long
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        keyboardType = .default
        returnKeyType = .go
        placeholder = "Enter a username"
        //clearButtonMode = .whileEditing
    }

}
