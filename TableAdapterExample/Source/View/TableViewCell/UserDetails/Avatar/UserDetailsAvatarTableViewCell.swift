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
    
    var onTap: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTouchAvatar))
        avatarImageView.addGestureRecognizer(tap)
    }
    
    func setup(_ displayModel: UserDetailsAvatarCellDisplayModel) {
        avatarImageView.kf.setImage(with: displayModel.avatarURL)
    }
    
    @objc func didTouchAvatar() {
        onTap?()
    }
}
