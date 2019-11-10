//
//  TabBarViewController.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    var output: TabBarViewOutput!

    var firstNavigationController: UINavigationController!
    var secondNavigationController: UINavigationController!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }
}

// MARK: - TabBarViewInput
extension TabBarViewController: TabBarViewInput {
    
    func setupInitialState() {
        /// The rootViewController of the Window is UINavigationController and we force it to hide navigation bar because root view controllers of the TabBarViewController tabs are another UINavigationControllers
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        viewControllers = [firstNavigationController, secondNavigationController]
    }
}
