//
//  TableCellAdapterInput.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

protocol TableCellAdapterInput {
    
    func registerCell(in tableView: UITableView)
    
    func cellForRow(in tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell
    
    func estimatedHeightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat
    func heightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat
    
    func shouldHighlightRow(at indexPath: IndexPath) -> Bool
    func didSelectRow(in tableView: UITableView, at indexPath: IndexPath)
    func didDeselectRow(in tableView: UITableView, at indexPath: IndexPath)
    func editActionsForRow(in tableView: UITableView, at indexPath: IndexPath) -> [UITableViewRowAction]?
    
    func canEditRow(in tableView: UITableView, at indexPath: IndexPath) -> Bool
}

// MARK: - Default implementation
extension TableCellAdapterInput {
    
    func shouldHighlightRow(at indexPath: IndexPath) -> Bool {
        return false
    }
    
    func didSelectRow(in tableView: UITableView, at indexPath: IndexPath) {
        // do nothing
    }
    
    func didDeselectRow(in tableView: UITableView, at indexPath: IndexPath) {
        // do nothing
    }
    
    func editActionsForRow(in tableView: UITableView, at indexPath: IndexPath) -> [UITableViewRowAction]? {
        return nil
    }
    
    func canEditRow(in tableView: UITableView, at indexPath: IndexPath) -> Bool {
        return false
    }
}
