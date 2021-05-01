//
//  MovieCellViewModel.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import Foundation
import SENetworking

struct MovieCellViewModel: NetworkServicesProtocol {
    
    weak var networkService: NetworkServices?
    var networkRequest: NetworkCancellable?

    let movie: MovieModel
    
    init(movie: MovieModel, networkService: NetworkServices?) {
        self.movie = movie
        self.networkService = networkService
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
    
    private var thumbnail: String {
        movie.thumbnail?.replacingOccurrences(of: DIContainer.shared.networkConfiguration.apiBaseURL.absoluteString, with: "") ?? ""
    }
    
    mutating func image(data: @escaping (Data) -> Void) {
        networkRequest = networkService?.fetchImage(path: thumbnail) { result in
            data(result)
        } fail: { _ in
            
        }

    }
    
}
