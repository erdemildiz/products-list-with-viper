//
//  PersonViewController+Handle.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import Foundation
import Kingfisher

extension PersonViewController {
    func setupUI() {
        view.backgroundColor = .white
        title = "Person"
    }
    
    func setPersonInfo() {
        guard let person = presenter?.person,
        let profilePath = person.profilePath else {
            return
        }
        if let personImageURL = URL(
            string: Bundle.imageBaseURL + "w200" + profilePath
        ) {
            personImageView.kf.setImage(with: personImageURL)
        }
        personNameLabel.text = person.name
        personDepartmentLabel.text = person.knownForDepartment.rawValue
    }
}
