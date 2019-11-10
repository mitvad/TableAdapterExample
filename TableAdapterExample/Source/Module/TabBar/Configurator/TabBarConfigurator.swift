//
//  TabBarConfigurator.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class TabBarModuleConfigurator {
    
    func configure(viewController: UIViewController) {
        guard let viewController = viewController as? TabBarViewController else { return }

        let router = TabBarRouter()
        router.viewController = viewController

        let presenter = TabBarPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = TabBarInteractor()
        interactor.output = presenter
        presenter.interactor = interactor
        
        viewController.output = presenter
        
        configureFirstModule(viewController)
        configureSecondModule(viewController)
    }
    
    private func configureFirstModule(_ viewController: TabBarViewController) {
        let usersListVC = UsersListViewController.instantiateFromStoryboard()
        let configurator = UsersListModuleConfigurator()
        configurator.configure(viewController: usersListVC)
        
        let navigationViewController = UINavigationController(rootViewController: usersListVC)
        navigationViewController.tabBarItem = UITabBarItem(title: "First", image: #imageLiteral(resourceName: "UserIcon"), tag: 0)
        
        viewController.firstNavigationController = navigationViewController
    }
    
    private func configureSecondModule(_ viewController: TabBarViewController) {
        let usersListVC = UsersListViewController.instantiateFromStoryboard()
        let configurator = UsersListModuleConfigurator()
        configurator.configure(viewController: usersListVC)
        
        let navigationViewController = UINavigationController(rootViewController: usersListVC)
        navigationViewController.tabBarItem = UITabBarItem(title: "Second", image: #imageLiteral(resourceName: "UserIcon"), tag: 0)
        
        viewController.secondNavigationController = navigationViewController
    }
}
