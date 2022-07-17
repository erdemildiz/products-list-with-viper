//
//  CreditTableViewController+Datasource.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import UIKit

extension CreditTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return credits?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CreditItemTableViewCell.identifier,
            for: indexPath) as? CreditItemTableViewCell else {
            return UITableViewCell()
        }
        guard let credit = credits?[indexPath.row] else {
            return UITableViewCell()
        }
        cell.configure(credit: credit)
        return cell
    }
}
