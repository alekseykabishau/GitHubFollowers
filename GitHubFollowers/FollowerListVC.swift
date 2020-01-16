//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0115..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String! // will be set when we pass data to it

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false // because it is hidden on searchVC
        navigationController?.navigationBar.prefersLargeTitles = true
        print(username!)
    }
}
