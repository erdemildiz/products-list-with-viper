//
//  MainViewController.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import UIKit

final class MainViewController: UITableViewController {
    
    var presenter: MainPresenterProtocol?
    
    lazy var searchViewController: UISearchController = {
        let searchViewController = UISearchController()
        searchViewController.searchBar.delegate = self
        return searchViewController
    }()
    
    lazy var emptyLabel: UILabel = {
        let label = UILabel(frame: Screen.bounds)
        label.text = "No data exist!"
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyDidLoad()        
    }
}

// MARK: - UISearchBarDelegate
extension MainViewController: UISearchBarDelegate {
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text else {
            return
        }
        presenter?.searchMovie(query: searchText)
    }
}
