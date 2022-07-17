//
//  CastService.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation
import Moya

enum CastService: TargetType {
    case info(movieId: Int)
    
    var path: String {
        switch self {
        case .info(let movieId):
            return "movie/\(movieId)/credits"
        }
    }
}

