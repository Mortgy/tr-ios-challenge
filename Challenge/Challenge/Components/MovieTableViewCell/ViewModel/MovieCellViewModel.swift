//
//  MovieCellViewModel.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import Foundation
import SENetworking

struct MovieCellViewModel {
    

    let movie: MovieModel
    
    init(movie: MovieModel) {
        self.movie = movie
    }
    
    var name: String {
        if let name = movie.name {
            return name
        }
        return ""
    }
    
    var year: String {
        if let year = movie.year {
            return "\(year)"
        }
        return ""
    }
    
    var thumbnail: URL? {
        URL(string: movie.thumbnail ?? "")
    }
    
}
