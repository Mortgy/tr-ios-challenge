//
//  NetworkServices+Extension.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

extension NetworkServices {
    
    func fetchMovies(with request: MoviesRequest, success: @escaping (MoviesModel) -> Void,
                          fail: @escaping (String) -> Void) -> NetworkCancellable? {
        let endpoint = ApiEndpoints.getMovies(with: request)
        return DIContainer.shared.apiDataTransferService.request(with: endpoint) { result in
            
            guard case let .success(response) = result, let movies = response as MoviesModel? else {
                fail("Failed to fetch data")
                return
            }
            
            success(movies)
        }
    }
    
}
