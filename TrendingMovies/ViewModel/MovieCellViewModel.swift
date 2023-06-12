//
//  MovieCellViewModel.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import Foundation

class MovieCellViewModel {
    var id: Int
    var imageURL: URL?
    var title: String
    var rating: String
    var date: String
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title
        self.rating = "\(movie.voteAverage)/10"
        self.date = movie.releaseDate
        self.imageURL = makeImageURL(movie.posterPath)
    }
    
    private func makeImageURL(_ posterPath: String) -> URL? {
        return URL(string: "\(NetworkConstants.shared.imageServerAddress)\(posterPath)")
    }
}
