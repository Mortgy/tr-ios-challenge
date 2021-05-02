//
//  MovieCollectionViewCell.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    var movieViewModel: MovieCellViewModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(movieViewModel: MovieCellViewModel) {
        self.movieViewModel = movieViewModel
        self.movieViewModel?.networkRequest?.cancel()
        self.movieViewModel?.image { [weak self] data in
            self?.movieImageView.image = UIImage(data: data)
        }
    }
    
}
