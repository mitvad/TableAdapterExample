//
//  TabBarPresenter.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import Foundation

class TabBarPresenter {
	weak var moduleOutput: TabBarModuleOutput?

	var router: TabBarRouterInput!

	var interactor: TabBarInteractorInput!
	
    weak var view: TabBarViewInput!
}

// MARK: - TabBarViewOutput
extension TabBarPresenter: TabBarViewOutput {
    
    func viewIsReady() {
        view.setupInitialState()
    }
}

// MARK: - TabBarInteractorOutput
extension TabBarPresenter: TabBarInteractorOutput {}

// MARK: - TabBarModuleInput
extension TabBarPresenter: TabBarModuleInput {}
