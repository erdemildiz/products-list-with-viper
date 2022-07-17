//
//  DetailRouter.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import UIKit

final class DetailRouter: DetailRouterProtocol {
    unowned let view: UIViewController
    var didTappedAnyCast: ((_ cast: CastItem) -> Void)?
    
    init(view: UIViewController) {
        self.view = view
    }
    
    func navigate(to route: DetailRoute) {
        switch route {
        case .cast(let casts):
            let castViewController = CastViewController()
            castViewController.casts = casts
            castViewController.didTappedAnyCast = didTappedAnyCast
            view.present(castViewController, animated: true)
        case .credit(let cast):
            let personDetailViewController = PersonBuilder.make(person: cast)
            view.navigationController?.pushViewController(personDetailViewController, animated: true)
        case let .presentAlert(title, message):
            presentAlert(title: title, message: message)        
        }
    }
    
    private func navigate(_ controller: UIViewController) {
        view.navigationController?.pushViewController(
            controller,
            animated: true)
    }
    
    private func presentAlert(title: String, message: String) {
        let alertView = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        let dismisAction = UIAlertAction(title: "Ok", style: .destructive)
        alertView.addAction(dismisAction)
        view.present(alertView, animated: true)
    }
}
