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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyDidLoad()
    }
}

// MARK: - UISearchBarDelegate
extension MainViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
