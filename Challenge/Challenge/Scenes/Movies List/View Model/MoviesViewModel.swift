//
//  MoviesViewModel.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

class MoviesViewModel : MoviesRequestProtocol, NetworkServicesProtocol {

    private weak var networkServices: NetworkServices?
    private(set) var movies: Publisher<[MovieCellViewModel]> = Publisher([])
    private(set) var errorMessage: Publisher<String> = Publisher(nil)

    internal var moviesRequest: MoviesRequest
    internal var networkRequest: NetworkCancellable?

    init(networkServices: NetworkServices, moviesRequest: MoviesRequest) {
        self.networkServices = networkServices
        self.moviesRequest = moviesRequest
    }
    
    func fetchData() {
        networkRequest = networkServices?.fetchMovies(with: moviesRequest){ [weak self] result in
            self?.movies.value = result.movies?.compactMap {
                MovieCellViewModel(movie: $0, networkService: self?.networkServices)
            }
        } fail: { [weak self] message in
            self?.errorMessage.value = message
        }
    }
}
