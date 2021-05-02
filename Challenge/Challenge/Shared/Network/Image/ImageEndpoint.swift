//
//  ImageEndpoint.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import Foundation
import SENetworking

struct ImageRequest: Encodable {
    
}

protocol ImageRequestProtocol {
    var imageRequest: ImageRequest { set get }
}

extension ApiEndpoints {
    static func getImage(path: String) -> Endpoint<Data> {
        return Endpoint(path: path, method: .get, responseDecoder: RawDataResponseDecoder())
    }
}
