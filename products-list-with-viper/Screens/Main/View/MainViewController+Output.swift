//
//  MainViewController+Output.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import Foundation

extension MainViewController: MainViewProtocol {
    func handle(_ output: MainPresenterOutput) {
        switch output {
        case .didLoad:
            setupUI()
        case .reloadData:
            tableView.reloadData()
        }
    }
}
