//
//  UINavigationController+Replace.swift
//  TableAdapterExample
//
//  Created by Vadym Mitin on 11/10/19.
//  Copyright © 2019 Vadym Mitin. All rights reserved.
//

import UIKit.UINavigationController

extension UINavigationController {
    
    func replaceRootViewController(with viewController: UIViewController, animated: Bool) {
        setViewControllers([viewController], animated: animated)
    }
}
