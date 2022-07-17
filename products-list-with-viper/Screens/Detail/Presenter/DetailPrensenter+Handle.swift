//
//  DetailPrensenter+Handle.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

extension DetailPrensenter {
    func notifyDidLoad() {
        view.handle(.didLoad)
        interactor.getCastDetail(movieId: movie.id)
    }
    
    func presentCast() {
        guard let casts = casts else {
            return
        }
        router.navigate(to: .cast(casts: casts))
    }
    
    func didTappedAnyCast(_ cast: CastItem) {
        router.navigate(to: .credit(cast: cast))
    }
}
