//
//  FavoritesView.swift
//  RealmExampleApp
//
//  Created by Andi Meier on 02.05.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct FavoritesView: View {
    
    @ObservedObject var viewModel = MovieViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(viewModel.getFavoriteMovies()) { movie in
                    MovieRow(isFavorite: self.viewModel.isFavorite(id: movie.id),movie: movie, viewModel: self.viewModel)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 13)
                }
            }.navigationBarTitle(Text("Favorites"))
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
