//
//  UserDetailsConfigurator.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UserDetailsModuleConfigurator {
    
    func configure(viewController: UIViewController, user: User) {
        guard let viewController = viewController as? UserDetailsViewController else { return }

        let router = UserDetailsRouter()
        router.viewController = viewController

        let presenter = UserDetailsPresenter(user: user)
        presenter.view = viewController
        presenter.router = router

        viewController.output = presenter
        
        
        //
        
        let avatarCellAdapter = UserDetailsAvatarTableCellAdapter(output: presenter)
        let firstNameCellAdapter = UserDetailsFirstNameTableCellAdapter(output: presenter)
        let lastNameCellAdapter = UserDetailsLastNameTableCellAdapter(output: presenter)
        let positionCellAdapter = UserDetailsLastPositionTableCellAdapter(output: presenter)
        
        let userDetailsSectionAdapter = CellsSetTableSectionAdapter()
        userDetailsSectionAdapter.cellAdapters = [avatarCellAdapter,
                                                  firstNameCellAdapter,
                                                  lastNameCellAdapter,
                                                  positionCellAdapter]
        
        let tableViewAdapter = TableViewAdapter()
        tableViewAdapter.sectionAdapters = [userDetailsSectionAdapter]
        
        viewController.tableViewAdapter = tableViewAdapter
    }
}
