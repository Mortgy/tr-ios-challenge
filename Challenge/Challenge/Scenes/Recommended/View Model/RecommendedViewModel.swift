//
//  RecommendedViewModel.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

class RecommendedViewModel : RecommendedRequestProtocol, NetworkServicesProtocol {
    
    private let networkServices: NetworkServices
    private(set) var recommended: Publisher<[MovieModel]> = Publisher([])
    private(set) var errorMessage: Publisher<String> = Publisher(nil)
    
    internal var recommendedRequest: RecommendedRequest
    internal var networkRequest: NetworkCancellable?

    init(networkServices: NetworkServices, recommendedRequest: RecommendedRequest) {
        self.networkServices = networkServices
        self.recommendedRequest = recommendedRequest
    }
    
    func fetchData() {
        networkRequest = networkServices.fetchRecommended(with: recommendedRequest){ [weak self] result in
            self?.recommended.value = result.movies
        } fail: { [weak self] message in
            self?.errorMessage.value = message
        }
    }
}
