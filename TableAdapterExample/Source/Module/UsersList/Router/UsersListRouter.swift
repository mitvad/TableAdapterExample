//
//  UsersListRouter.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UsersListRouter {
	weak var viewController: UIViewController!
}

// MARK: - UsersListRouterInput
extension UsersListRouter: UsersListRouterInput {
    
    func showUserDetails(user: User) {
        let screenVC = UserDetailsViewController.instantiateFromStoryboard()
        let configurator = UserDetailsModuleConfigurator()
        configurator.configure(viewController: screenVC, user: user)
        
        viewController.navigationController?.pushViewController(screenVC, animated: true)
    }
}
