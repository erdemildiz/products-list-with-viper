//
//  MainViewController+TableView.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import UIKit

extension MainViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let movies = presenter?.movies,
              !movies.isEmpty else {
            tableView.backgroundView = emptyLabel
            return 0
        }
        tableView.backgroundView = nil
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: MovieItemTableViewCell.identifier,
            for: indexPath) as? MovieItemTableViewCell else {
            return UITableViewCell()
        }
        guard let movie = presenter?.movies?[indexPath.row] else {
            return UITableViewCell()
        }
        cell.configure(movie: movie)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController()
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
