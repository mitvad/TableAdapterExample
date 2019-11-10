//
//  InitialScreenConfigurator.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class InitialScreenModuleConfigurator {
    
    @discardableResult
    func configure(window: ApplicationWindow) -> InitialScreenModuleInput {
        let router = InitialScreenRouter()
        router.window = window

        let presenter = InitialScreenPresenter()
        presenter.router = router

        window.output = presenter
        
        let moduleInput = presenter

        let interactor = InitialScreenInteractor()
        interactor.output = presenter
        presenter.interactor = interactor

        return moduleInput
    }
}
