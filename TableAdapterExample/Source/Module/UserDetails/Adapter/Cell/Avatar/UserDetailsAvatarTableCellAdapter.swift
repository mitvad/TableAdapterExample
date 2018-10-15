//
//  UserDetailsAvatarTableCellAdapter.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UserDetailsAvatarTableCellAdapter {
    
    private weak var output: UserDetailsAvatarTableCellAdapterOutput!
    
    init(output: UserDetailsAvatarTableCellAdapterOutput) {
        self.output = output
    }
}

// MARK: - TableCellAdapterInput
extension UserDetailsAvatarTableCellAdapter: TableCellAdapterInput {
    
    func registerCell(in tableView: UITableView) {
        tableView.register(UserDetailsAvatarTableViewCell.viewNib(), forCellReuseIdentifier: UserDetailsAvatarTableViewCell.reuseIdentifier)
    }
    
    func cellForRow(in tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserDetailsAvatarTableViewCell.reuseIdentifier, for: indexPath) as? UserDetailsAvatarTableViewCell else {
            
            assertionFailure("unable to dequeue cell UserDetailsAvatarTableViewCell")
            
            return UITableViewCell()
        }
        
        let displayModel = output.avatarDisplayModel()
        cell.setup(displayModel)
        
        return cell
    }
    
    func estimatedHeightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return tableView.frame.width
    }
    
    func heightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return tableView.frame.width
    }
}
