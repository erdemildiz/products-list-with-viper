//
//  MainViewController+Handle.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import Foundation

extension MainViewController {
    // Setup UI
    func setupUI() {
        title = "MainViewController"
        view.backgroundColor = .white
        self.navigationItem.searchController = searchViewController
    }
}
