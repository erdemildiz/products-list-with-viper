//
//  PopularMovieService.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import Foundation

enum PopularMovieService: TargetType {
    case list
    
    var path: String {
        switch self {
        case .list:
            return "movie/popular"
        }
    }
}
