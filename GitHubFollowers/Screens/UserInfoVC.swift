//
//  UserInfoVC.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0210..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print(username!)
    }
    
    
    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
    }
}
