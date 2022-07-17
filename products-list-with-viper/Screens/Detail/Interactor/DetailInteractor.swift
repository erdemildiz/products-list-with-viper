//
//  DetailInteractor.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

final class DetailInteractor: DetailInteractorProtocol {
    var delegate: DetailInteractorDelegate?
    
    func getCastDetail(movieId: Int) {
        NetworkManager<CastService>().request(
            target: .info(movieId: movieId),
            CastModel.self) {  [weak self] result in
                self?.delegate?.handle(.hideLoading)
                switch result {
                case .success(let castInfo):
                    self?.delegate?.handle(.fetchedCastInfo(castInfo: castInfo))
                case .failure(let error):
                    self?.delegate?.handle(.error(error: error))
                }
            }
    }
}
