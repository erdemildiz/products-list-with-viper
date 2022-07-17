//
//  MainContractor.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import Foundation
import Moya

// MARK: - View
protocol MainViewProtocol: AnyObject {
    func handle(_ output: MainPresenterOutput)
}

// MARK: - Presenter
protocol MainPresenterProtocol: AnyObject {
    var movies: [MovieItem]? { get set }
    func notifyDidLoad()
    func didTappedMovieCell(indexPath: IndexPath)
    func searchMovie(query: String)
}

enum MainPresenterOutput {
    case didLoad
    case reloadData
}

// MARK: - Interactor
protocol MainInteractorProtocol: AnyObject {
    var delegate: MainInteractorDelegate? { get set }
    func getPopularMovies()
    func searchMovie(query: String)
}

protocol MainInteractorDelegate: AnyObject {
    func handle(_ output: MainInteractorOutput)
}

enum MainInteractorOutput {
    case fetchedPopularMovies(movies: [MovieItem])
    case searchedMovie(movies: [MovieItem])
    case showLoading
    case hideLoading
    case error(error: MoyaError)
}

// MARK: - Router
protocol MainRouterProtocol: AnyObject {
    func navigate(to route: MainRoute)
}

enum MainRoute {
    case detail(movie: MovieItem)
    case presentAlert(title: String, message: String)
}
