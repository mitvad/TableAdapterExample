//
//  AppDelegate.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupMainModule()
        
        return true
    }
}

// MARK: - Private
extension AppDelegate {
    
    private func setupMainModule() {
        let applicationWindow = UIWindow(frame: UIScreen.main.bounds)
        applicationWindow.backgroundColor = UIColor.white
        
        let navigationVC = UINavigationController()
        applicationWindow.rootViewController = navigationVC
        
        applicationWindow.makeKeyAndVisible()
        
        let usersListVC = UsersListViewController.instantiateFromStoryboard()
        let configurator = UsersListModuleConfigurator()
        configurator.configure(viewController: usersListVC)
        navigationVC.pushViewController(usersListVC, animated: true)
        
        window = applicationWindow
    }
}
