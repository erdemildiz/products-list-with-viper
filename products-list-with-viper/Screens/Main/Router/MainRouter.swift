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
        case .detail:
            navigate(DetailViewController())
        }
    }
    
    private func navigate(_ controller: UIViewController) {
        view.navigationController?.pushViewController(
            controller,
            animated: true)
    }
}
