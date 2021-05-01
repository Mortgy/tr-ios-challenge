//
//  MovieDetailsViewModel.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

class MovieDetailsViewModel : MovieDetailsRequestProtocol, NetworkServicesProtocol {

    private let networkServices: NetworkServices
    private(set) var movie: Publisher<MovieDetailsModel> = Publisher(nil)
    private(set) var errorMessage: Publisher<String> = Publisher(nil)

    internal var movieDetailRequest: MovieDetailsRequest
    internal var networkRequest: NetworkCancellable?

    init(networkServices: NetworkServices, movieDetailRequest: MovieDetailsRequest) {
        self.networkServices = networkServices
        self.movieDetailRequest = movieDetailRequest
    }
    
    func fetchData() {
        networkRequest = networkServices.fetchDetails(with: movieDetailRequest){ [weak self] result in
            self?.movie.value = result
        } fail: { [weak self] message in
            self?.errorMessage.value = message
        }
    }
}
