//
//  MoviesTableViewController.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import UIKit

class MoviesTableViewController: UITableViewController, Alert {
    
    var viewModel: MoviesViewModel
    weak var coordinator: MoviesListCoordinator?
    init(viewModel: MoviesViewModel, coordinator: MoviesListCoordinator) {
        self.viewModel = viewModel
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        register()
        viewModel.fetchData()
    }
}

// MARK: - Setup UI
extension MoviesTableViewController {
    
    func setupUI() {
        title = "Movies"
        
        //Use large titles
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationItem.largeTitleDisplayMode = .automatic
    }
}

// MARK: - Subscribers
extension MoviesTableViewController {
    
    func register() {
        registerSubscribers()
        registerCell()
    }
    
    func registerSubscribers() {
        self.viewModel.movies.subscribe { [weak self] _ in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        self.viewModel.errorMessage.subscribe { [weak self] message in
            guard let message = message else { return }
            self?.showAlert(title: "Error", message: message)
        }
    }
    
    func registerCell() {
        tableView.register(MovieTableViewCell.nib(), forCellReuseIdentifier: MovieTableViewCell.identifier())
    }
}

// MARK: - Coordinator
extension MoviesTableViewController: Coordinated{
    func coordinatorInstance() -> Coordinator? {
        self.coordinator
    }
}

// MARK: - Table view data source
extension MoviesTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel.movies.value?.count ?? 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier(), for: indexPath) as! MovieTableViewCell
        // Configure the cell...
        cell.configure(movieViewModel: viewModel.movies.value![indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.open(movieId: viewModel.movies.value![indexPath.row].movie.id!)
    }
}
