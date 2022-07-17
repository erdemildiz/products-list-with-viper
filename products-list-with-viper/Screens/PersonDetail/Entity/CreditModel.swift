//
//  CreditModel.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

// MARK: - CreditModel
struct CreditModel: Codable {
    let cast: [CreditItem]
}

// MARK: - CreditItem
struct CreditItem: Codable {
    let originalTitle: String?
    let posterPath: String?
    let releaseDate: String?
    let mediaType: CreditMediaType

    enum CodingKeys: String, CodingKey {
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case mediaType = "media_type"
    }
}

enum CreditMediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

