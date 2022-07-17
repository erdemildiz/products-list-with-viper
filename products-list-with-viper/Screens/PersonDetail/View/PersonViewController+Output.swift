//
//  PersonViewController+Output.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation

extension PersonViewController: PersonViewProtocol {
    func handle(_ output: PersonPresenterOutput) {
        switch output {
        case .didLoad:
            setupUI()
            setPersonInfo()
        }
    }
}
