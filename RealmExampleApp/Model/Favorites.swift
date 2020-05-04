//
//  Favorites.swift
//  RealmExampleApp
//
//  Created by Andi Meier on 04.05.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation
import RealmSwift

class Favorites: Object {
    
    @objc dynamic var movieId:    Int  = 0
    @objc dynamic var isFavorite: Bool = false
    
    override class func primaryKey() -> String? {
        return "movieId"
    }
}
