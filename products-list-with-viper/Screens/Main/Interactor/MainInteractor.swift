//
//  MainInteractor.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import Foundation

final class MainInteractor: MainInteractorProtocol {
    weak var delegate: MainInteractorDelegate?
    
    func getPopularMovies() {
        delegate?.handle(.showLoading)
        NetworkManager<PopularMovieService>().request(
            target: .list,
            MovieModel.self) { [weak self] result in
                self?.delegate?.handle(.hideLoading)
                switch result {
                case .success(let movies):
                    self?.delegate?.handle(.fetchedPopularMovies(movies: movies.results))
                case .failure(let error):
                    self?.delegate?.handle(.error(error: error))
                }
            }
    }
    
    func searchMovie(query: String) {
        delegate?.handle(.showLoading)
        NetworkManager<PopularMovieService>().request(
            target: .search(query: query),
            MovieModel.self) { [weak self] result in
                self?.delegate?.handle(.hideLoading)
                switch result {
                case .success(let movies):
                    self?.delegate?.handle(.searchedMovie(movies: movies.results))
                case .failure(let error):
                    self?.delegate?.handle(.error(error: error))
                }
            }
    }
    
}
