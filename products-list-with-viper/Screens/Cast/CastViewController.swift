//
//  CastViewController.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 17.07.2022.
//

import UIKit

class CastViewController: UIViewController {

    @IBOutlet weak var castStackView: UIStackView!
    var casts: [CastItem]?
    var didTappedAnyCast: ((_ cast: CastItem) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCastView()
    }
    
    func setupCastView() {
        guard let casts = casts else {
            return
        }
        casts.enumerated().forEach { index, cast  in
            let castElement = UIButton()
            castElement.translatesAutoresizingMaskIntoConstraints = false
            castElement.setTitle(cast.name, for: .normal)
            castElement.setTitleColor(.blue, for: .normal)
            castElement.titleLabel?.font = .systemFont(ofSize: 12)
            castElement.addTarget(
                self,
                action: #selector(handleDidTappedCast),
                for: .touchUpInside)
            castElement.tag = index
            castStackView.addArrangedSubview(castElement)
            NSLayoutConstraint.activate([
                castElement.heightAnchor.constraint(equalToConstant: 20),
                castElement.leadingAnchor.constraint(equalTo: castStackView.leadingAnchor),
                castElement.trailingAnchor.constraint(equalTo: castStackView.trailingAnchor)
            ])
        }
    }
    
    @objc
    private func handleDidTappedCast(_ sender: UIButton) {
        guard let cast = casts?[sender.tag] else {
            return
        }
        dismiss(animated: true) { [weak self] in
            self?.didTappedAnyCast?(cast)
        }
        
    }

}
