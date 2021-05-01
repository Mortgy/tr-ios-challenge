//
//  MovieTableViewCell.swift
//  Challenge
//
//  Created by Mortgy on 5/2/21.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    private(set) var movieViewModel: MovieCellViewModel?
    @IBOutlet weak var thumbImageVIew: UIImageView!
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
        
        self.movieViewModel?.networkRequest?.cancel()
        self.movieViewModel?.image { [weak self] data in
            self?.thumbImageVIew.image = UIImage(data: data)
        }
    }
    
}
