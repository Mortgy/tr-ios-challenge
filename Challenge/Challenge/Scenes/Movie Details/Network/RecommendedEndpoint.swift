//
//  RecommendedEndpoint.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

struct RecommendedRequest: Encodable {
    var id: String
}

protocol RecommendedRequestProtocol {
    var recommendedRequest: RecommendedRequest { set get }
}

extension ApiEndpoints {
    static func getRecommended(with recommendedRequestDTO: RecommendedRequest) -> Endpoint<[MovieModel]> {
        return Endpoint(path: "details/recommended/\(recommendedRequestDTO.id).json",
                        method: .get,
                        queryParametersEncodable: recommendedRequestDTO)
    }
}
