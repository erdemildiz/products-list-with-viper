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
    
    func didTappedMovieCell(indexPath: IndexPath) {
        guard let movie = movies?[indexPath.row] else {
            return
        }
        router.navigate(to: .detail(movie: movie))
    }
    
    func searchMovie(query: String) {
        interactor.searchMovie(query: query)
    }
}
