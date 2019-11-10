//
//  InitialScreenRouter.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class InitialScreenRouter {
    
    weak var window: UIWindow!
    
    weak var navigationController: UINavigationController!
}

// MARK: - InitialScreenRouterInput
extension InitialScreenRouter: InitialScreenRouterInput {
    
    func showInitialScreen() {
        let initialVC = InitialScreenViewController.instantiateFromStoryboard()
        
        navigationController = UINavigationController(rootViewController: initialVC)
        navigationController.setNavigationBarHidden(true, animated: false)
        
        window.rootViewController = navigationController
    }
    
    func showAuthFlow() {
//        let agreementVC = AgreementScreenViewController.instantiateFromStoryboard()
//        let configurator = AgreementScreenModuleConfigurator()
//        configurator.configure(viewController: agreementVC)
//
//        navigationController.replaceRootViewController(with: agreementVC, animated: true)
    }
    
    func showTabBar() {
        let screenVC = TabBarViewController.instantiateFromStoryboard()
        let configurator = TabBarModuleConfigurator()
        configurator.configure(viewController: screenVC)
        
        navigationController.replaceRootViewController(with: screenVC, animated: true)
    }
}
