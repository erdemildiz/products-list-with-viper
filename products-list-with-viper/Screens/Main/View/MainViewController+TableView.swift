//
//  MainViewController+TableView.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import UIKit

extension MainViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.movies?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let movie = presenter?.movies?[indexPath.row] else {
            return UITableViewCell()
        }
        let cell = UITableViewCell()
        cell.textLabel?.text = movie.originalTitle
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController()
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
