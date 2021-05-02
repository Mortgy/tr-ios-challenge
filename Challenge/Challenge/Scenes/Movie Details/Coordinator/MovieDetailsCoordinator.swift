//
//  MovieDetailsCoordinator.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import Foundation
import UIKit

class MovieDetailsCoordinator: Coordinator {
    weak var parentCoordinator: MoviesListCoordinator?

    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    var movieId: Int
    
    init(navigationController: UINavigationController, movieId: Int) {
        self.navigationController = navigationController
        self.movieId = movieId
    }
    
    func start() {
        guard let networkServices = parentCoordinator?.networkServices else {
            return
        }
        let movieDetailsRequest = MovieDetailsRequest(id: movieId)
        let viewModel = MovieDetailsViewModel(networkServices: networkServices, movieDetailRequest: movieDetailsRequest)
        let detailsViewController = MovieDetailsViewController(viewModel: viewModel)
        detailsViewController.coordinator = self
        navigationController.pushViewController(detailsViewController, animated: true)
    }
    
    func open(id: Int) {
        parentCoordinator?.open(movieId: id)
//        let movieDetailsCoordinator = MovieDetailsCoordinator(navigationController: navigationController, movieId: movieId)
//        movieDetailsCoordinator.parentCoordinator = self
//        childCoordinators.append(movieDetailsCoordinator)
//        movieDetailsCoordinator.movieId = id
//        movieDetailsCoordinator.start()
    }
}
