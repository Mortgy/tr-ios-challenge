//
//  MovieDetailsViewController.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import UIKit

class MovieDetailsViewController: UIViewController, Alert {
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieReleaseDateLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    @IBOutlet weak var moviePlotLabel: UILabel!
    @IBOutlet weak var moviePosterImageView: UIImageView!
    @IBOutlet weak var collectionView: RecommendedCollectionView!
    @IBOutlet weak var recommendationsStackView: UIStackView!
    
    var viewModel: MovieDetailsViewModel
    weak var coordinator: MovieDetailsCoordinator?
    
    init(viewModel: MovieDetailsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        registerSubscribers()
        viewModel.fetchData()
        setupRecommended()
        registerRecommendedSubscriber()
    }
}

// MARK: - Subscribers
extension MovieDetailsViewController {
    
    func registerSubscribers() {
        self.viewModel.movie.subscribe { [weak self] movie in
            DispatchQueue.main.async {
                self?.title = self?.viewModel.name
                self?.movieNameLabel.text = self?.viewModel.name
                self?.movieReleaseDateLabel.text = self?.viewModel.releaseDate
                self?.movieDescriptionLabel.text = self?.viewModel.description
                self?.moviePlotLabel.text = self?.viewModel.plot
            }
        }
        self.viewModel.image.subscribe { [weak self] data in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self?.moviePosterImageView.image = UIImage(data: data)
            }
        }
        
        self.viewModel.errorMessage.subscribe { [weak self] message in
            guard let message = message else { return }
            self?.showAlert(title: "Error", message: message)
        }
    }
    
    func setupRecommended() {
        let recommendedRequest = RecommendedRequest(id: viewModel.movieDetailRequest.id)
        let recommendedViewModel = RecommendedViewModel(networkServices: viewModel.networkServices, recommendedRequest: recommendedRequest)
        collectionView.setup(viewModel: recommendedViewModel, coordinator: coordinator!)
        
    }
    
    func registerRecommendedSubscriber() {
        collectionView.viewModel.recommended.subscribe { [weak self] result in
            if let result = result, result.count > 0 {
                self?.recommendationsStackView.isHidden = false
            } else {
                self?.recommendationsStackView.isHidden = true
            }
        }
        
        collectionView.viewModel.errorMessage.subscribe { [weak self] message in
            guard let message = message else { return }
            self?.showAlert(title: "Error", message: message)
        }
    }
}

//MARK: - Coordinator
extension MovieDetailsViewController: Coordinated {
    func coordinatorInstance() -> Coordinator? {
        coordinator
    }
}
