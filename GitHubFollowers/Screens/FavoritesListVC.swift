//
//  FavoritesListVC.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0112..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
        
        PersistenceManager.retrieveFavorites { (result) in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
}
