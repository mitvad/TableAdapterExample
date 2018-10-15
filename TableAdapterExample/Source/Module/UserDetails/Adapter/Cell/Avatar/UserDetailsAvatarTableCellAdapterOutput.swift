//
//  UserDetailsAvatarTableCellAdapterOutput.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import Foundation

protocol UserDetailsAvatarTableCellAdapterOutput: AnyObject {
    
    func avatarDisplayModel() -> UserDetailsAvatarCellDisplayModel
}
