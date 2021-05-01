//
//  MoviesEndpoint.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

struct MoviesRequest: Encodable {
    
}

protocol MoviesRequestProtocol {
    var moviesRequest: MoviesRequest { set get }
}

extension ApiEndpoints {
    static func getMovies(with movieRequestDTO: MoviesRequest) -> Endpoint<[MovieModel]> {
        return Endpoint(path: "list.json",
                        method: .get,
                        queryParametersEncodable: movieRequestDTO)
    }
}
