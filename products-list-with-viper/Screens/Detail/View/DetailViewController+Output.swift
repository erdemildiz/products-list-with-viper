//
//  DetailViewController+Output.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

extension DetailViewController: DetailViewProtocol {
    func handle(_ output: DetailPresenterOutput) {
        switch output {
        case .didLoad:
            setupUI()
        }
    }
}
