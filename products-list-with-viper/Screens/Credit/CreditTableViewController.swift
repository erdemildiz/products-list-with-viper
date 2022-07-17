//
//  CreditTableViewController.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import UIKit

class CreditTableViewController: UITableViewController {
    
    var credits: [CreditItem]?

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }

}

// MARK: Handle Functions
extension CreditTableViewController {
    private func registerCell() {
        tableView.register(
            UINib(
                nibName: "CreditItemTableViewCell",
                bundle: nil),
            forCellReuseIdentifier: CreditItemTableViewCell.identifier)
    }
}
