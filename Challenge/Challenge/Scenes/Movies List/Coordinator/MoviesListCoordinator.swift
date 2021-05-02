//
//  MainCoordinator.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import UIKit

class MoviesListCoordinator: NSObject, Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    var networkServices = NetworkServices()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        
        let moviesRequest = MoviesRequest()
        let viewModel = MoviesViewModel(networkServices: networkServices, moviesRequest: moviesRequest)
        
        let vc = MoviesTableViewController.init(viewModel: viewModel, coordinator: self)
        
        navigationController.pushViewController(vc, animated: false)
    }
    
    func childDidFinish(child: Coordinator? ) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}

// MARK: - Coordinations
extension MoviesListCoordinator {
    func open(movieId: Int) {
        let movieDetailsCoordinator = MovieDetailsCoordinator(navigationController: navigationController, movieId: movieId)
        movieDetailsCoordinator.parentCoordinator = self
        childCoordinators.append(movieDetailsCoordinator)
        movieDetailsCoordinator.start()
    }
}

// MARK: - UINavigationControllerDelegate
extension MoviesListCoordinator : UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
        
        if let vc = fromViewController as? Coordinated {
            childDidFinish(child: vc.coordinatorInstance())
        }
        
    }
    
}
