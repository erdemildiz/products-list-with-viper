//
//  MainPresenter.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import Foundation

final class MainPresenter: MainPresenterProtocol {
    
    unowned let view: MainViewProtocol
    let interactor: MainInteractorProtocol
    let router: MainRouterProtocol
    
    init(
        view: MainViewProtocol,
        interactor: MainInteractorProtocol,
        router: MainRouterProtocol
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
        self.interactor.delegate = self
    }
}

// MARK: - MainInteractorDelegate
extension MainPresenter: MainInteractorDelegate {
    func handle(_ output: MainInteractorOutput) {
        switch output {
        case .fetchedData:
            router.navigate(to: .detail)
        }
    }
}
