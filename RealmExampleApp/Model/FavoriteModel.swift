//
//  FavoriteModel.swift
//  RealmExampleApp
//
//  Created by Andi Meier on 04.05.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation
import RealmSwift

class FavoriteModel {
    
    let realm = try! Realm()
        
    
    func isFavorite(id: Int) -> Bool {
        let result = realm.objects(Favorites.self).filter("movieId = %@", id)
        
        guard let movie = result.first else {
            return false
        }
        
        return movie.isFavorite
    }
    
    func handleFavorites(id: Int) {
        print("Favorites Realm: $\(Realm.Configuration.defaultConfiguration.fileURL!)")
        
        if isFavorite(id: id) {
            try! realm.write {
                realm.create(Favorites.self, value: ["movieId": id, "isFavorite": false], update: .modified)
            }
        } else {
            try! realm.write {
                realm.create(Favorites.self, value: ["movieId": id, "isFavorite": true], update: .modified)
            }
        }
    }
    
}
