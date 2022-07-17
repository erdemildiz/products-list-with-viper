//
//  PersonViewController.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import UIKit

final class PersonViewController: UIViewController {
    
    var presenter: PersonPresenterProtocol?
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var personDepartmentLabel: UILabel!
    @IBOutlet weak var personNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.notifyDidLoad()
    }
    
    @IBAction func didTappedCredits(_ sender: Any) {
        presenter?.presentCredit()
    }
}
