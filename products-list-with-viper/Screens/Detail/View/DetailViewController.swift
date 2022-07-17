//
//  DetailViewController.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import UIKit

final class DetailViewController: UIViewController {
        
    @IBOutlet weak var movieImageview: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var summeryLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var videoLabel: UILabel!
    
    var presenter: DetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyDidLoad()
    }
    
    @IBAction func didTappedCastButton(_ sender: UIButton) {
        presenter?.presentCast()
    }
}
