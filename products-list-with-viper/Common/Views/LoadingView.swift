//
//  LoadingView.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//

import UIKit

final class LoadingView: UIView {
    static let shared = LoadingView()
    
    lazy var indicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView()
        indicator.color = .white
        indicator.translatesAutoresizingMaskIntoConstraints = false
        return indicator
    }()
    
    private init() {
        super.init(frame: Screen.bounds)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func showLoading() {
        guard let topViewController = UIApplication.topViewController() else {
            return
        }
        topViewController.view.addSubview(indicator)
        NSLayoutConstraint.activate([
            indicator.centerXAnchor.constraint(equalTo: topViewController.view.centerXAnchor),
            indicator.centerYAnchor.constraint(equalTo: topViewController.view.centerYAnchor, constant: -100)
        ])
        indicator.startAnimating()
        topViewController.view.backgroundColor = .white.withAlphaComponent(0.5)
    }
    
    func hideLoading() {
        removeFromSuperview()
        indicator.stopAnimating()
        guard let topViewController = UIApplication.topViewController() else {
            return
        }
        topViewController.view.backgroundColor = .white
    }
}
