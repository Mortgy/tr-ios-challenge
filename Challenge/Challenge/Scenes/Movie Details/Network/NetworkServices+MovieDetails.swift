//
//  NetworkServices+Extension.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

extension NetworkServices {
    
    func fetchDetails(with request: MovieDetailsRequest, success: @escaping (MovieDetailsModel) -> Void,
                          fail: @escaping (String) -> Void) -> NetworkCancellable? {
        let endpoint = ApiEndpoints.getMovieDetails(with: request)
        return DIContainer.shared.apiDataTransferService.request(with: endpoint) { result in
            
            guard case let .success(response) = result, let movie = response as MovieDetailsModel? else {
                fail("Failed to fetch data")
                return
            }
            
            success(movie)
        }
    }
}
