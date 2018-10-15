//
//  UserDetailsNameTableViewCell.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UserDetailsNameTableViewCell: UITableViewCell {
    
    static let height: CGFloat = 45
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func setup(_ displayModel: UserDetailsNameCellDisplayModel) {
        nameLabel.text = displayModel.text
    }
}
