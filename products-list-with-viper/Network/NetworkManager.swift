//
//  NetworkManager.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//
// Source: https://erdemildiz.medium.com/moya-entegrasyonu-1cafa22da9d6

import Foundation
import Moya

struct NetworkManager<Target: TargetType> {
    private let provider = MoyaProvider<Target>(plugins: [NetworkLoggerPlugin()])    
    func request<Model: Decodable>(
        target: Target,
        _ model: Model.Type,
        _ completion: @escaping (Result<Model, MoyaError>) -> Void
    ) {
        provider.request(target) { result in
            switch result {
            case .success(let response):
                do {
                    let jsonResponse = try JSONDecoder()
                        .decode(model.self, from: response.data)
                    completion(.success(jsonResponse))
                } catch {
                    completion(.failure(.encodableMapping(error)))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
