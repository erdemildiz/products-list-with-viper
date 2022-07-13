//
//  MainBuilder.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import Foundation

final class MainBuilder {
    static func make() -> MainViewController {
        let view = MainViewController()
        let router = MainRouter(view: view)
        let interactor = MainInteractor()
        let presenter = MainPresenter(
            view: view,
            interactor: interactor,
            router: router)
        view.presenter = presenter
        return view
    }
}
