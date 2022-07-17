//
//  DetailPrensenter.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

final class DetailPrensenter: DetailPresenterProtocol {
        
    unowned let view: DetailViewProtocol
    let interactor: DetailInteractorProtocol
    let router: DetailRouterProtocol
    let movie: MovieItem
    var casts: [CastItem]?
    
    init(
        movie: MovieItem,
        view: DetailViewProtocol,
        interactor: DetailInteractorProtocol,
        router: DetailRouterProtocol
    ) {
        self.movie = movie
        self.view = view
        self.interactor = interactor
        self.router = router
        self.interactor.delegate = self
        self.router.didTappedAnyCast = didTappedAnyCast
    }
}

// MARK: - MainInteractorDelegate
extension DetailPrensenter: DetailInteractorDelegate {
    func handle(_ output: DetailInteractorOutput) {
        switch output {
        case .fetchedCastInfo(let castInfo):
            casts = castInfo.cast
        case .showLoading:
            LoadingView.shared.showLoading()
        case .hideLoading:
            LoadingView.shared.hideLoading()
        case  .error(let error):
            router.navigate(to: .presentAlert(
                title: "Error!",
                message: error.localizedDescription))
        }
    }
}
