//
//  MoviesTableViewController.swift
//  Challenge
//
//  Created by Mortgy on 5/1/21.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    var viewModel: MoviesViewModel
    weak var coordinator: MoviesListCoordinator?
    init(viewModel: MoviesViewModel, coordinator: MoviesListCoordinator) {
        self.viewModel = viewModel
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
        
        self.viewModel.movies.subscribe { [weak self] _ in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(MovieTableViewCell.nib(), forCellReuseIdentifier: MovieTableViewCell.identifier())
        viewModel.fetchData()
    }
}

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
