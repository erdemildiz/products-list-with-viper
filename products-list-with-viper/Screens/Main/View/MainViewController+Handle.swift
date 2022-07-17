//
//  MainViewController+Handle.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import Foundation
import UIKit

extension MainViewController {
    // Setup UI
    func setupUI() {
        title = "Home"
        view.backgroundColor = .white
        self.navigationItem.searchController = searchViewController
    }
    // Register Cell
    func registerCell() {
        tableView.register(
            UINib(nibName: "MovieItemTableViewCell", bundle: nil),
            forCellReuseIdentifier: MovieItemTableViewCell.identifier)
    }
}
