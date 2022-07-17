//
//  PersonPresenter+Handle.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

extension PersonPrensenter {
    func notifyDidLoad() {
        view.handle(.didLoad)
        interactor.getPersonCredits(personId: person.id)
    }
    
    func presentCredit() {
        guard let credits = credits else {
            return
        }
        router.navigate(to: .credit(credits: credits))
    }
}
