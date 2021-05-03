//
//  MovieDetailsViewModel.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

class MovieDetailsViewModel : MovieDetailsRequestProtocol, NetworkServicesProtocol {

    let networkServices: NetworkServices
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

// MARK: - Unwrapped Movie Properties
extension MovieDetailsViewModel {
    var name: String {
        movie.value?.name ?? ""
    }
    
    var releaseDate: String {
        if let unixTime = movie.value?.releaseDate {
            let day = Date(timeIntervalSince1970: TimeInterval(unixTime)).format(with: "d")
            let monthYear = Date(timeIntervalSince1970: TimeInterval(unixTime)).format(with: "MMM yyyy")
            return "Release Date: \(day) of \(monthYear)"
        }
        return ""
    }
    
    var description: String {
        movie.value?.description ?? ""
    }
    
    var plot: String {
        movie.value?.notes ?? ""
    }
    
    var picture: URL? {
        URL(string: movie.value?.picture ?? "")
    }
}
