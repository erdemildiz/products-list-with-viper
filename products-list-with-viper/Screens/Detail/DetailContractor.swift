//
//  DetailContractor.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation
import Moya

// MARK: - View
protocol DetailViewProtocol: AnyObject {
    func handle(_ output: DetailPresenterOutput)
}

// MARK: - Presenter
protocol DetailPresenterProtocol: AnyObject {
    var movie: MovieItem { get }
    var casts: [CastItem]? { get set }
    func notifyDidLoad()
    func presentCast()
}

enum DetailPresenterOutput {
    case didLoad
}

// MARK: - Interactor
protocol DetailInteractorProtocol: AnyObject {
    var delegate: DetailInteractorDelegate? { get set }
    func getCastDetail(movieId: Int)
}

protocol DetailInteractorDelegate: AnyObject {
    func handle(_ output: DetailInteractorOutput)
}

enum DetailInteractorOutput {
    case fetchedCastInfo(castInfo: CastModel)
    case showLoading
    case hideLoading
    case error(error: MoyaError)
}

// MARK: - Router
protocol DetailRouterProtocol: AnyObject {
    func navigate(to route: DetailRoute)
    var didTappedAnyCast: ((_ cast: CastItem) -> Void)? { get set }
}

enum DetailRoute {
    case cast(casts: [CastItem])
    case presentAlert(title: String, message: String)
}
