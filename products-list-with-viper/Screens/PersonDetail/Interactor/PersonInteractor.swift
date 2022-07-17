//
//  PersonInteractor.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

final class PersonInteractor: PersonInteractorProtocol {
    
    var delegate: PersonInteractorDelegate?
    
    func getPersonCredits(personId: Int) {
        NetworkManager<CreditService>().request(
            target: .info(personId: personId),
            CreditModel.self) {  [weak self] result in
                self?.delegate?.handle(.hideLoading)
                switch result {
                case .success(let creditModel):
                    self?.delegate?.handle(.fetchedCredits(credits: creditModel.cast))
                case .failure(let error):
                    self?.delegate?.handle(.error(error: error))
                }
            }
    }
}
