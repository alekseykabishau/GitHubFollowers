//
//  GFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0218..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

protocol GFRepoVCDelegate: class {
    func didTapGitHubProfile(for user: User)
}


class GFRepoVC: GFItemInfoVC {
    
    weak var delegate: GFRepoVCDelegate!
    
    init(user: User, delegate: GFRepoVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, with: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, with: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
