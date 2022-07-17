//
//  UIScreen+Size.swift
//  products-list-with-viper
//
//  Created by Erdem ILDIZ on 15.07.2022.
//

import UIKit

enum Screen {
    static var bounds: CGRect {
        UIScreen.main.bounds
    }
    static var width: CGFloat {
        bounds.width
    }
    static var height: CGFloat {
        bounds.height
    }
}
