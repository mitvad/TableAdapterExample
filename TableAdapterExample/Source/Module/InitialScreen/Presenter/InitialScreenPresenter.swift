//
//  InitialScreenPresenter.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import Foundation

class InitialScreenPresenter {

	var router: InitialScreenRouterInput!

	var interactor: InitialScreenInteractorInput!
	
}

// MARK: - InitialScreenInteractorOutput
extension InitialScreenPresenter: InitialScreenInteractorOutput {
    
    func didChangeApplicationSate(to state: ApplicationSate) {
        switch state {
        case .unauthorized:
            router.showAuthFlow()
        case .authorized:
            router.showTabBar()
        }
    }
}

// MARK: - InitialScreenModuleInput
extension InitialScreenPresenter: InitialScreenModuleInput {
    
    func didFinishLaunchingApplication() {
        router.showInitialScreen()
        
        interactor.loadInitialData()
    }
}

// MARK: - ApplicationWindowOutput
extension InitialScreenPresenter: ApplicationWindowOutput {}
