//
//  PopularMovieService.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import Foundation
import Moya

enum PopularMovieService: TargetType {
    case list
    case search(query: String)
    
    var path: String {
        switch self {
        case .list:
            return "movie/popular"
        case .search:
            return "search/movie"
        }
    }
    
    var task: Task {
        switch self {
        case .search(let query):
            var searchParam: [String: String] = [:]
            searchParam["query"] = query
            searchParam["api_key"] = serviceApiKey ?? ""
            return .requestParameters(
                parameters: searchParam,
                encoding: URLEncoding.default)
        default:
            return .requestParameters(
                parameters: defaultParams,
                encoding: URLEncoding.default)
        }
    }
    
}
