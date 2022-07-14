//
//  ServiceDefinable+Config.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import Foundation
import Moya

extension Moya.TargetType {
    private var mainBundle: Bundle {
        Bundle.main
    }
    var serviceBaseURL: URL? {
        guard let baseURL = mainBundle.object(forInfoDictionaryKey: "BASE_URL") as? String
        else {
            return nil
        }
        return URL(string: baseURL)
    }
    var serviceApiKey: String? {
        guard let apiKey = mainBundle.object(forInfoDictionaryKey: "API_KEY") as? String
        else {
            return nil
        }
        return apiKey
    }
}
