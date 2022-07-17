//
//  CreditItemTableViewCell.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import UIKit
import Kingfisher

class CreditItemTableViewCell: UITableViewCell {
    static let identifier = "CreditItemTableViewCellIdentifier"
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieTypeLabel: UILabel!
    @IBOutlet weak var movieReleaseDateLabel: UILabel!
    
    func configure(credit: CreditItem) {
        if let moviePosterURL = URL(
            string: Bundle.imageBaseURL + "w200" + (credit.posterPath ?? "")
        ) {
            movieImageView.kf.setImage(with: moviePosterURL)
        }
        movieTitleLabel.text = credit.originalTitle
        movieTypeLabel.text = credit.mediaType.rawValue
        movieReleaseDateLabel.text = "Release Date: " + (credit.releaseDate ?? "")
    }
    
}
