//
//  MainPresenter+Handle.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import Foundation

extension MainPresenter {
    func notifyDidLoad() {
        view.handle(.didLoad)
        interactor.getPopularMovies()
    }
}
