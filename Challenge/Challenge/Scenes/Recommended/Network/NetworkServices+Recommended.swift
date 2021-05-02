//
//  NetworkServices+Extension.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

extension NetworkServices {
    
    func fetchRecommended(with request: RecommendedRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable? {
        let endpoint = ApiEndpoints.getRecommended(with: request)
        return DIContainer.shared.apiDataTransferService.request(with: endpoint) { result in
            
            guard case let .success(response) = result, let list = response as MoviesModel? else {
                fail("Failed to fetch data")
                return
            }
            
            success(list)
        }
    }
}
