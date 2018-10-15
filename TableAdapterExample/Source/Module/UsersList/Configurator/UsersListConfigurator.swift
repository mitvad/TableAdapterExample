//
//  UsersListConfigurator.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UsersListModuleConfigurator {
    
    func configure(viewController: UIViewController) {
        guard let viewController = viewController as? UsersListViewController else { return }

        let router = UsersListRouter()
        router.viewController = viewController

        let presenter = UsersListPresenter()
        presenter.view = viewController
        presenter.router = router

        viewController.output = presenter
        
        //
        
        let usersSectionAdapter = UsersTableSectionAdapter(output: presenter)
        
        let tableViewAdapter = TableViewAdapter()
        tableViewAdapter.sectionAdapters = [usersSectionAdapter]
        
        viewController.tableViewAdapter = tableViewAdapter
    }
}
