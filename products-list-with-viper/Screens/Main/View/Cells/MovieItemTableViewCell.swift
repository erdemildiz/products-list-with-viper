//
//  MovieItemTableViewCell.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 15.07.2022.
//

import UIKit
import Kingfisher

class MovieItemTableViewCell: UITableViewCell {
    static let identifier = "MovieItemTableViewCellIdentifier"
    
    @IBOutlet weak var moviewImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseLabel: UILabel!
    @IBOutlet weak var popularLabel: UILabel!
    
    func configure(movie: MovieItem) {
        if let moviePosterURL = URL(
            string: Bundle.imageBaseURL + "w200" + movie.posterPath
        ) {
            moviewImageView.kf.setImage(with: moviePosterURL)
        }
        titleLabel.text = movie.title
        releaseLabel.text = "Release Date: " + movie.releaseDate
        popularLabel.text = String(format: "Popularity: %.f", movie.popularity)
    }
}
