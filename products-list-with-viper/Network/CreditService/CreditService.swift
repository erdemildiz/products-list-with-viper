//
//  CreditService.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation
import Moya

enum CreditService: TargetType {
    case info(personId: Int)
    var path: String {
        switch self {
        case .info(let personId):
            return "person/\(personId)/combined_credits"
        }
    }
}
