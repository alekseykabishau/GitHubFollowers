//
//  PersistenceManager.swift
//  GitHubFollowers
//
//  Created by Aleksey on 0309..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import Foundation

enum PersitenceActionType {
    case add, remove
}

// can use enum to avoid empty struct initialization
struct PersistenceManager {
    
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorites = "favorites"
    }
    
    
    static func updateWith(favorite: Follower, actionType: PersitenceActionType, completed: @escaping (GFError?) -> Void) {
        
        retrieveFavorites { (result) in
            switch result {
            case .success(let favorites):
                var retrievedFavorites = favorites
                
                switch actionType {
                case .add:
                    guard !retrievedFavorites.contains(favorite) else {
                        completed(.alreadyInFavorites)
                        return
                    }
                    retrievedFavorites.append(favorite)
                case .remove:
                    retrievedFavorites.removeAll { (follower) -> Bool in
                        follower.login == favorite.login
                    }
                }
                
                completed(save(favorites: retrievedFavorites))
                
            case .failure(let error):
                completed(error)
            }
        }
    }
    
    
    // because of saving custom object - using codable, simple types - can go with userDefaults
    static func retrieveFavorites(completed: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let favotitesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([])) // in this case no data were previously saved
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favotites = try decoder.decode([Follower].self, from: favotitesData)
            completed(.success(favotites))
        } catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    
    static func save(favorites: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let encodedFavorites = try encoder.encode(favorites)
            defaults.set(encodedFavorites, forKey: Keys.favorites)
            return nil
        } catch {
            return .unableToFavorite
        }
    }
}
