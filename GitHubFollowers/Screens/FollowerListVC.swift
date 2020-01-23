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
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
        
        view.backgroundColor = .systemBackground
        navigationController?.setNavigationBarHidden(false, animated: true) // because it is hidden on searchVC
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            switch result {
            case .success(let followers):
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Bad Stuff Happend", message: error.rawValue, buttonTitle: "OK")
                DispatchQueue.main.async {
                    self.navigationController?.popViewController(animated: true)
                }
            }
        }
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }
}
