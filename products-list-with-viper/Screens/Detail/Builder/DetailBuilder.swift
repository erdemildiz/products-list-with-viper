//
//  DetailBuilder.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

final class DetailBuilder {
    static func make(movie: MovieItem) -> DetailViewController {
        let view = DetailViewController()
        let router = DetailRouter(view: view)
        let interactor = DetailInteractor()
        let presenter = DetailPrensenter(
            movie: movie,
            view: view,
            interactor: interactor,
            router: router)
        view.presenter = presenter
        return view
    }
}
