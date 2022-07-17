//
//  Bundle+URL.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 15.07.2022.
//

import Foundation

extension Bundle {
    static var baseURL: URL? {
        guard let baseURL = main.object(forInfoDictionaryKey: "BASE_URL") as? String
        else {
            return nil
        }
        return URL(string: baseURL)
    }
    static var apiKey: String? {
        guard let apiKey = main.object(forInfoDictionaryKey: "API_KEY") as? String
        else {
            return nil
        }
        return apiKey
    }
    static var imageBaseURL: String {
        guard let imageBaseURL = main.object(forInfoDictionaryKey: "IMAGE_BASE_URL") as? String
        else {
            return ""
        }
        return imageBaseURL
    }
}
