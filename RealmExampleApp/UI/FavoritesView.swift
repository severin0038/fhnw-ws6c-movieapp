//
//  FavoritesView.swift
//  RealmExampleApp
//
//  Created by Andi Meier on 02.05.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Favorites")
            }.navigationBarTitle(Text("Favorites"))
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
