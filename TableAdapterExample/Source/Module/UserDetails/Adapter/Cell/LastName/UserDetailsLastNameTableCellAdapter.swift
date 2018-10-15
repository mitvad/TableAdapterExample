//
//  UserDetailsLastNameTableCellAdapter.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UserDetailsLastNameTableCellAdapter {
    
    private weak var output: UserDetailsLastNameTableCellAdapterOutput!
    
    init(output: UserDetailsLastNameTableCellAdapterOutput) {
        self.output = output
    }
}

// MARK: - TableCellAdapterInput
extension UserDetailsLastNameTableCellAdapter: TableCellAdapterInput {
    
    func registerCell(in tableView: UITableView) {
        tableView.register(UserDetailsNameTableViewCell.viewNib(), forCellReuseIdentifier: UserDetailsNameTableViewCell.reuseIdentifier)
    }
    
    func cellForRow(in tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserDetailsNameTableViewCell.reuseIdentifier, for: indexPath) as? UserDetailsNameTableViewCell else {
            
            assertionFailure("unable to dequeue cell UserDetailsNameTableViewCell")
            
            return UITableViewCell()
        }
        
        let displayModel = output.lastNameDisplayModel()
        cell.setup(displayModel)
        
        return cell
    }
    
    func estimatedHeightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return UserDetailsNameTableViewCell.height
    }
    
    func heightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return UserDetailsNameTableViewCell.height
    }
}
