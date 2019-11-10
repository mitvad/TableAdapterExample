//
//  TabBarRouterShowProtocol.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

protocol TabBarRouterShowProtocol {

	var viewController: UIViewController! { get }
}

extension TabBarRouterShowProtocol {
	
	func presentTabBar() {
        let screenVC = TabBarViewController.instantiateFromStoryboard()
        let configurator = TabBarModuleConfigurator()
        configurator.configure(viewController: screenVC)
        
        let navVC = UINavigationController(rootViewController: screenVC)
        
        viewController.present(navVC, animated: true, completion: nil)
    }

    func showTabBar() {
        let screenVC = TabBarViewController.instantiateFromStoryboard()
        let configurator = TabBarModuleConfigurator()
        configurator.configure(viewController: screenVC)
        
        viewController.navigationController?.replaceRootViewController(with: screenVC, animated: true)
    }
}
