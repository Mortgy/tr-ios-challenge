//
//  RecommendedEndpoint.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

struct RecommendedRequest: Encodable {
    let id: Int
}

protocol RecommendedRequestProtocol {
    var recommendedRequest: RecommendedRequest { set get }
}

extension ApiEndpoints {
    static func getRecommended(with recommendedRequestDTO: RecommendedRequest) -> Endpoint<MoviesModel> {
        return Endpoint(path: "details/recommended/\(recommendedRequestDTO.id).json",
                        method: .get)
    }
}
