//
//  ServiceDefinable.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import Foundation
import Moya

typealias Method = Moya.Method
typealias Task = Moya.Task
typealias TargetType = Moya.TargetType

extension Moya.TargetType {
    var defaultParams: [String: String] {
        var params: [String: String] = [:]
        params["api_key"] = serviceApiKey ?? ""
        return params
    }
    var baseURL: URL {
        serviceBaseURL ?? URL(string: "")!
    }
    
    var path: String {
        ""
    }
    
    var method: Method {
        .get
    }
    
    var task: Task {
        return .requestParameters(
            parameters: defaultParams,
            encoding: URLEncoding.default)
    }
    
    var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
}
