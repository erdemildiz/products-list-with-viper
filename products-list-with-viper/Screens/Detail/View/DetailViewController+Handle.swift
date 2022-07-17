//
//  DetailViewController+Handle.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import UIKit
import Kingfisher

extension DetailViewController {
    func setupUI() {
        guard let movie = presenter?.movie else {
            return
        }
        if let moviePosterURL = URL(
            string: Bundle.imageBaseURL + "w200" + movie.posterPath
        ) {
            movieImageview.kf.setImage(with: moviePosterURL)
        }
        titleLabel.text = movie.title
        summeryLabel.text = movie.overview
        ratingLabel.text = String(format: "Rating: %.1f", movie.voteAverage)
        videoLabel.text = movie.video ? "Have Video" : "Not Exist"
    }
}
