//
//  UserDetailsAvatarTableViewCell.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit
import Kingfisher

class UserDetailsAvatarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    func setup(_ displayModel: UserDetailsAvatarCellDisplayModel) {
        avatarImageView.kf.setImage(with: displayModel.avatarURL)
    }
}
