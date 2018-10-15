//
//  UserDetailsLastPositionTableCellAdapter.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UserDetailsLastPositionTableCellAdapter {
    
    private weak var output: UserDetailsLastPositionTableCellAdapterOutput!
    
    init(output: UserDetailsLastPositionTableCellAdapterOutput) {
        self.output = output
    }
}

// MARK: - TableCellAdapterInput
extension UserDetailsLastPositionTableCellAdapter: TableCellAdapterInput {
    
    func registerCell(in tableView: UITableView) {
        tableView.register(UserDetailsPositionTableViewCell.viewNib(), forCellReuseIdentifier: UserDetailsPositionTableViewCell.reuseIdentifier)
    }
    
    func cellForRow(in tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserDetailsPositionTableViewCell.reuseIdentifier, for: indexPath) as? UserDetailsPositionTableViewCell else {
            
            assertionFailure("unable to dequeue cell UserDetailsPositionTableViewCell")
            
            return UITableViewCell()
        }
        
        let displayModel = output.positionDisplayModel()
        cell.setup(displayModel)
        
        return cell
    }
    
    func estimatedHeightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return UserDetailsPositionTableViewCell.height
    }
    
    func heightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return UserDetailsPositionTableViewCell.height
    }
}
