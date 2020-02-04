//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0118..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import Foundation

// Hashable - can add hash function and pass just required property
struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String // in json response it's in snake case format
}
