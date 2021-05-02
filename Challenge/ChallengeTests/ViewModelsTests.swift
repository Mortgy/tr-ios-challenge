//
//  ViewModelsTests.swift
//  ChallengeTests
//
//  Created by Mortgy on 5/2/21.
//

import XCTest
@testable import SENetworking
@testable import Challenge

class ViewModelsTests: XCTestCase {
    
    let network = NetworkMock()
    
    func test_MoviesViewModel_networkSuccessAndFail() {
        let moviesRequest = MoviesRequest()
        let viewModel = MoviesViewModel(networkServices: network, moviesRequest: moviesRequest)
        
        viewModel.movies.subscribe { movies in
            guard let movies = movies else { return }
            XCTAssertEqual(movies.count, 0)
        }
        
        viewModel.errorMessage.subscribe { message in
            guard let message = message else { return }
            XCTAssertEqual(message, "Failed to fetch Request")
        }
        
        //test fail
        network.shouldFail = true
        viewModel.fetchData()
        
        //test success
        network.shouldFail = false
        viewModel.fetchData()

    }

    func test_DetailsViewModel_networkSuccessAndFail() {
        let detailsRequest = MovieDetailsRequest(id: 1)
        let viewModel = MovieDetailsViewModel(networkServices: network, movieDetailRequest: detailsRequest)
        
        viewModel.movie.subscribe { movie in
            guard let movie = movie else { return }
            XCTAssertEqual(movie.id, 1)
            XCTAssertEqual(movie.name, "Test Movie")
            XCTAssertEqual(movie.description, "Test Description")
        }
        
        viewModel.errorMessage.subscribe { message in
            guard let message = message else { return }
            XCTAssertEqual(message, "Failed to fetch Request")
        }
        
        //test fail
        network.shouldFail = true
        viewModel.fetchData()
        
        // test success
        network.shouldFail = false
        viewModel.fetchData()
    }
    
    func test_RecommendedViewModel_networkSuccessAndFail() {
        let recommendedRequest = RecommendedRequest(id: 1)
        let viewModel = RecommendedViewModel(networkServices: network, recommendedRequest: recommendedRequest)
        
        viewModel.recommended.subscribe { movies in
            guard let movies = movies else { return }
            XCTAssertEqual(movies.count, 0)
        }
        
        viewModel.errorMessage.subscribe { message in
            guard let message = message else { return }
            XCTAssertEqual(message, "Failed to fetch Request")
        }
        
        //test fail
        network.shouldFail = true
        viewModel.fetchData()
        
        // test success
        network.shouldFail = false
        viewModel.fetchData()
    }

}

class NetworkMock: Network {
    
    var shouldFail = false
    
    func fetchMovies(with request: MoviesRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable? {
        
        if shouldFail {
            fail("Failed to fetch Request")
        } else {
            success(MoviesModel(movies: []))
        }
        
        return nil
    }
    
    func fetchDetails(with request: MovieDetailsRequest, success: @escaping (MovieDetailsModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable? {
        
        if shouldFail {
            fail("Failed to fetch Request")
        } else {
            success(MovieDetailsModel(id: 1, name: "Test Movie", description: "Test Description", notes: nil, rating: nil, picture: nil, releaseDate: nil))
        }
        
        return nil
    }
    
    func fetchRecommended(with request: RecommendedRequest, success: @escaping (MoviesModel) -> Void, fail: @escaping (String) -> Void) -> NetworkCancellable? {

        if shouldFail {
            fail("Failed to fetch Request")
        } else {
            success(MoviesModel(movies: []))
        }
        
        return nil
    }

}
