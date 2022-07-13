//
//  MainContractor.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import Foundation

// MARK: - View
protocol MainViewProtocol: AnyObject {
    func handle(_ output: MainPresenterOutput)
}

// MARK: - Presenter
protocol MainPresenterProtocol: AnyObject {
    func notifyDidLoad()
}

enum MainPresenterOutput {
    case didLoad
}

// MARK: - Interactor
protocol MainInteractorProtocol: AnyObject {
    var delegate: MainInteractorDelegate? { get set }
    func getMovies()
}

protocol MainInteractorDelegate: AnyObject {
    func handle(_ output: MainInteractorOutput)
}

enum MainInteractorOutput {
    case fetchedData
}

// MARK: - Router
protocol MainRouterProtocol: AnyObject {
    func navigate(to route: MainRoute)
}

enum MainRoute {
    case detail
}
