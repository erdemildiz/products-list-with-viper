//
//  PersonPresenter.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

final class PersonPrensenter: PersonPresenterProtocol {
        
    unowned let view: PersonViewProtocol
    let interactor: PersonInteractorProtocol
    let router: PersonRouterProtocol
    let person: CastItem
    var credits: [CreditItem]?
    
    init(
        person: CastItem,
        view: PersonViewProtocol,
        interactor: PersonInteractorProtocol,
        router: PersonRouterProtocol
    ) {
        self.person = person
        self.view = view
        self.interactor = interactor
        self.router = router
        self.interactor.delegate = self
    }
}

// MARK: - MainInteractorDelegate
extension PersonPrensenter: PersonInteractorDelegate {
    func handle(_ output: PersonInteractorOutput) {
        switch output {
        case .fetchedCredits(let credits):
            self.credits = credits
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
