//
//  ContentView.swift
//  MoyaExampleSwiftUI
//
//  Created by Oliver Gepp on 04.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI
import RealmSwift

struct MovieListView: View {
    
    @ObservedObject var viewModel = MovieViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView{
                ForEach(viewModel.movies) { movie in
                    MovieRow(isFavorite: self.viewModel.isFavorite(id: movie.id),movie: movie, viewModel: self.viewModel)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 13)
                }
            }.navigationBarTitle(Text("Discover"))
        }
        
    }
    
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(viewModel: MovieViewModel(provider: nil, movies: ExampleDataProvider.movies))
    }
}
