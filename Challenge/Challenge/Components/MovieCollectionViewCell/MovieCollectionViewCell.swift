//
//  MovieCollectionViewCell.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import UIKit
import Kingfisher

class MovieCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    var movieViewModel: MovieCellViewModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(movieViewModel: MovieCellViewModel) {
        self.movieViewModel = movieViewModel
        guard let pictureUrl = self.movieViewModel?.thumbnail else { return }
        self.movieImageView.kf.setImage(with: pictureUrl, options: [.loadDiskFileSynchronously, .cacheOriginalImage, .transition(.fade(0.25))])
    }
    
}
