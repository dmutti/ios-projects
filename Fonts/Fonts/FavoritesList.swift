//
//  FavoritesList.swift
//  Fonts
//
//  Created by Danilo Mutti on 02/28/17.
//  Copyright © 2017 Danilo Mutti. All rights reserved.
//

import Foundation
import UIKit

class FavoritesList {

    static let sharedFavoritesList = FavoritesList()
    private(set) var favorites: [String]
    
    init() {
        let defaults = UserDefaults.standard
        let storedFavorites = defaults.object(forKey: "favorites") as? [String]
        favorites = storedFavorites != nil ? storedFavorites! : []
    }
    
    func addFavorite(fontName : String) {
        if !favorites.contains(fontName) {
            favorites.append(fontName)
            saveFavorites()
        }
    }
    
    func removeFavorite(fontName : String) {
        if let index = favorites.index(of: fontName) {
            favorites.remove(at: index)
            saveFavorites()
        }
    }
    
    private func saveFavorites() {
        let defaults = UserDefaults.standard
        defaults.set(favorites, forKey: "favorites")
        defaults.synchronize()
    }
}
