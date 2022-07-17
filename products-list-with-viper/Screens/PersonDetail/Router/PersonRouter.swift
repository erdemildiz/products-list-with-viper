//
//  PersonRouter.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import UIKit

final class PersonRouter: PersonRouterProtocol {
    unowned let view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
    
    func navigate(to route: PersonRoute) {
        switch route {
        case .credit(let credits):
        let creditTableViewController = CreditTableViewController()
        creditTableViewController.credits = credits
        view.present(creditTableViewController, animated: true)
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
