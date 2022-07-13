//
//  AppTabViewController.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 13.07.2022.
//

import UIKit

final class AppTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup tabview
        setupTabView()
    }
    
    private func setupTabView() {
        let mainViewController = UINavigationController(
            rootViewController: MainBuilder.make())
        let personViewController = UINavigationController(rootViewController: PersonViewController())
        
        let mainItem = UITabBarItem(
            title: "Home",
            image: nil,
            selectedImage: nil)
        mainViewController.tabBarItem = mainItem
        
        let personItem = UITabBarItem(
            title: "Person",
            image: nil,
            selectedImage: nil)
        personViewController.tabBarItem = personItem
        
        viewControllers = [mainViewController, personViewController]
    }
}
