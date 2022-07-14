//
//  MovieModel.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import Foundation

// MARK: - MovieModel
struct MovieModel: Codable {
    let results: [MovieItem]
}

// MARK: - Result
struct MovieItem: Codable {
    let id: Int
    let originalTitle, overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case id
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
