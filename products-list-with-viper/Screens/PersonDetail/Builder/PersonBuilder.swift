//
//  PersonBuilder.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

final class PersonBuilder {
    static func make(person: CastItem) -> PersonViewController {
        let view = PersonViewController()
        let router = PersonRouter(view: view)
        let interactor = PersonInteractor()
        let presenter = PersonPrensenter(
            person: person,
            view: view,
            interactor: interactor,
            router: router)
        view.presenter = presenter
        return view
    }
}
