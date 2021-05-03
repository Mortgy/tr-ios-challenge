//
//  NetworkServices.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

protocol NetworkServicesProtocol {
    var networkRequest: NetworkCancellable? { set get }
}

protocol NetworkServices: AnyObject {
    func fetchMovies(with request: MoviesRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?
    func fetchDetails(with request: MovieDetailsRequest, success: @escaping (MovieDetailsModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?
    func fetchRecommended(with request: RecommendedRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable?
}
