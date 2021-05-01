//
//  MovieDetailsEndpoint.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

struct MovieDetailsRequest: Encodable {
    var id: String
}

protocol MovieDetailsRequestProtocol {
    var movieDetailRequest: MovieDetailsRequest { set get }
}

extension ApiEndpoints {
    static func getMovieDetails(with movieDetailsRequestDTO: MovieDetailsRequest) -> Endpoint<MovieDetailsModel> {
        return Endpoint(path: "details/\(movieDetailsRequestDTO.id).json",
                        method: .get,
                        queryParametersEncodable: movieDetailsRequestDTO)
    }
}
