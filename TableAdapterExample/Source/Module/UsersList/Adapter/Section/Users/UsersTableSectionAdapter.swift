//
//  UsersTableSectionAdapter.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UsersTableSectionAdapter {
    
    private weak var output: UsersTableSectionAdapterOutput!
    
    init(output: UsersTableSectionAdapterOutput) {
        self.output = output
    }
}

// MARK: - TableSectionAdapterInput
extension UsersTableSectionAdapter: TableSectionAdapterInput {
    
    func registerCells(in tableView: UITableView) {
        tableView.register(UserTableViewCell.viewNib(), forCellReuseIdentifier: UserTableViewCell.reuseIdentifier)
    }
    
    func numberOfRows(in section: Int) -> Int {
        return output.numberOfUsers()
    }
    
    func cellForRow(in tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.reuseIdentifier, for: indexPath) as? UserTableViewCell else {
            
            assertionFailure("unable to dequeue cell UserTableViewCell")
            
            return UITableViewCell()
        }
        
        let displayModel = output.userDisplayModel(at: indexPath)
        cell.setup(displayModel)
        
        return cell
    }
    
    func estimatedHeightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return UserTableViewCell.height
    }
    
    func heightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return UserTableViewCell.height
    }
    
    func shouldHighlightRow(at indexPath: IndexPath) -> Bool {
        return true
    }
    
    func didSelectRow(in tableView: UITableView, at indexPath: IndexPath) {
        output.didSelectUser(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
