//
//  UsersTableSectionAdapterOutput.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import Foundation

protocol UsersTableSectionAdapterOutput: AnyObject {
    
    func numberOfUsers() -> Int
    func userDisplayModel(at indexPath: IndexPath) -> UserCellDisplayModel
    func didSelectUser(at indexPath: IndexPath)
}
