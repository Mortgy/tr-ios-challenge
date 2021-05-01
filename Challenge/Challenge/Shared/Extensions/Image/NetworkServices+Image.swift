//
//  NetworkServices+Image.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import Foundation
import SENetworking

extension NetworkServices {
    func fetchImage(path: String, success: @escaping (Data) -> Void,
                          fail: @escaping (String) -> Void) -> NetworkCancellable? {
        let endpoint = ApiEndpoints.getImage(path: path)
        return DIContainer.shared.apiDataTransferService.request(with: endpoint) { result in
            
            guard case let .success(imageData) = result else {
                fail("Failed to fetch data")
                return
            }
            
            success(imageData)
        }
    }
}
