//
//  NetworkConfiguration.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import SENetworking

struct NetworkConfiguration {
    var apiBaseURL: URL {
        URL(string: "https://raw.githubusercontent.com/TradeRev/tr-ios-challenge/master/")!
    }
}

class DIContainer {
    static let shared = DIContainer()

    lazy var networkConfiguration = NetworkConfiguration()

    lazy var apiDataTransferService: DataTransferService = {
        let config = ApiDataNetworkConfig(baseURL: networkConfiguration.apiBaseURL)

        let apiDataNetwork = DefaultNetworkService(config: config)
        return DefaultDataTransferService(with: apiDataNetwork)
    }()
}
