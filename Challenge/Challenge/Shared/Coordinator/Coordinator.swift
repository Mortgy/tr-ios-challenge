//
//  Coordinator.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController : UINavigationController { get set }
    
    func start()
}

protocol Coordinated {
    func coordinatorInstance() -> Coordinator?
}
