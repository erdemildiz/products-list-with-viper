//
//  PersonContractor.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation
import Moya

// MARK: - View
protocol PersonViewProtocol: AnyObject {
    func handle(_ output: PersonPresenterOutput)
}

// MARK: - Presenter
protocol PersonPresenterProtocol: AnyObject {
    var person: CastItem { get }
    var credits: [CreditItem]? { get set }
    func notifyDidLoad()
    func presentCredit()
}

enum PersonPresenterOutput {
    case didLoad
}

// MARK: - Interactor
protocol PersonInteractorProtocol: AnyObject {
    var delegate: PersonInteractorDelegate? { get set }
    func getPersonCredits(personId: Int)
}

protocol PersonInteractorDelegate: AnyObject {
    func handle(_ output: PersonInteractorOutput)
}

enum PersonInteractorOutput {
    case fetchedCredits(credits: [CreditItem])
    case showLoading
    case hideLoading
    case error(error: MoyaError)
}

// MARK: - Router
protocol PersonRouterProtocol: AnyObject {
    func navigate(to route: PersonRoute)
}

enum PersonRoute {
    case credit(credits: [CreditItem])
    case presentAlert(title: String, message: String)
}
