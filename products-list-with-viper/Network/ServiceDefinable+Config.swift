//
//  ServiceDefinable+Config.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import Foundation
import Moya

extension Moya.TargetType {
    var serviceBaseURL: URL? {
        Bundle.baseURL
    }
    var serviceApiKey: String? {
        Bundle.apiKey
    }
}
