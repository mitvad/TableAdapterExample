//
//  UserTableViewCell.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    static let height: CGFloat = 75
    
    @IBOutlet weak var firstNmaeLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    func setup(_ displayModel: UserCellDisplayModel) {
        firstNmaeLabel.text = displayModel.firstName
        lastNameLabel.text = displayModel.lastName.uppercased()
        positionLabel.text = displayModel.position
    }
}
