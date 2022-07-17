//
//  UIApplication+TopController.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 14.07.2022.
//
// Source: https://stackoverflow.com/a/50656239

import UIKit

extension UIApplication {

    static func topViewController(
        base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController
    ) -> UIViewController? {

        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)

        } else if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return topViewController(base: selected)

        } else if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }
}
