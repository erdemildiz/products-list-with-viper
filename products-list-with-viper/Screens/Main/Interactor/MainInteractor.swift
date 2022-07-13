//
//  MainInteractor.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import Foundation

final class MainInteractor: MainInteractorProtocol {
    weak var delegate: MainInteractorDelegate?
    
    func getMovies() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.delegate?.handle(.fetchedData)
        }
        
    }
    
}
