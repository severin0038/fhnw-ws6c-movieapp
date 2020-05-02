//
//  MovieRow.swift
//  MoyaExampleSwiftUI
//
//  Created by Oliver Gepp on 04.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//
import Kingfisher
import SwiftUI

struct MovieRow: SwiftUI.View {
    
    let movie: Movie
    let viewModel: MovieViewModel
    
    var body: some SwiftUI.View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top
            )) {
                KFImage(movie.fullPosterURL)
                    .cancelOnDisappear(true)
                    .resizable()
                    .frame(height: 210)
                    .cornerRadius(6)
                
                VStack(alignment: .leading) {
                    Text(movie.title.uppercased())
                        .font(.system(size: 20, weight: .bold))
                        .padding(.horizontal, 25)
                        .padding(.top, 15)
                        .padding(.bottom, 6)
                        .foregroundColor(.white)
                    
                    Text(getYear(s: movie.releaseDate))
                        .font(.system(size: 12))
                        .padding(.horizontal, 25)
                        .foregroundColor(.white)
                }
            }
            
            RatingSummaryView(rating: self.viewModel.ratingForMovieId(id: movie.id))
                .padding(.horizontal, 25)
                .padding(.vertical, 13)
        }
        .shadow(radius: 6, y: 13)
    }
    
    func getYear(s: String) -> Substring {
        let i = s.index(s.startIndex, offsetBy: 6)..<s.endIndex
        return s[i]
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some SwiftUI.View {
        MovieRow(movie: ExampleDataProvider.movies[0], viewModel: MovieViewModel())
    }
}
