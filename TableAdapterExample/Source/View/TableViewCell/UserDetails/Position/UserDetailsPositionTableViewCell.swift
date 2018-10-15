//
//  UserDetailsPositionTableViewCell.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UserDetailsPositionTableViewCell: UITableViewCell {
    
    static let height: CGFloat = 70
    
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var experienceLabel: UILabel!
    
    func setup(_ displayModel: UserDetailsPositionCellDisplayModel) {
        positionLabel.text = displayModel.position
        experienceLabel.text = displayModel.experience
    }
}
