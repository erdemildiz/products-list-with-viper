//
//  MainRouter.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import UIKit

final class MainRouter: MainRouterProtocol {
    unowned let view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
    
    func navigate(to route: MainRoute) {
        switch route {
        case .detail(let movie):
            let detail = DetailBuilder.make(movie: movie)
            view.navigationController?.pushViewController(detail, animated: true)
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
