//
//  MovieTableViewCell.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import UIKit
import Kingfisher

class MovieTableViewCell: UITableViewCell {
    
    private(set) var movieViewModel: MovieCellViewModel?
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(movieViewModel: MovieCellViewModel) {
        self.movieViewModel = movieViewModel
        movieNameLabel.text = self.movieViewModel?.name
        movieYearLabel.text = self.movieViewModel?.year
        guard let pictureUrl = self.movieViewModel?.thumbnail else { return }
        self.thumbImageView.kf.setImage(with: pictureUrl, options: [.loadDiskFileSynchronously, .cacheOriginalImage, .transition(.fade(0.25))])
    }
    
}
