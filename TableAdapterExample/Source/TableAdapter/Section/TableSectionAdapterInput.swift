//
//  TableSectionAdapterInput.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

protocol TableSectionAdapterInput {
    
    func registerCells(in tableView: UITableView)
    
    func numberOfRows(in section: Int) -> Int
    
    func cellForRow(in tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell
    func viewForHeader(in tableView: UITableView, section: Int) -> UIView?
    
    func estimatedHeightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat
    func heightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat
    func estimatedHeightForHeader(in tableView: UITableView, section: Int) -> CGFloat
    func heightForHeader(in tableView: UITableView, section: Int) -> CGFloat
    
    func shouldHighlightRow(at indexPath: IndexPath) -> Bool
    
    func didSelectRow(in tableView: UITableView, at indexPath: IndexPath)
    func didDeselectRow(in tableView: UITableView, at indexPath: IndexPath)
    
    func editActionsForRow(in tableView: UITableView, at indexPath: IndexPath) -> [UITableViewRowAction]?
    
    func canEditRow(in tableView: UITableView, at indexPath: IndexPath) -> Bool
}

// MARK: - Default implementation
extension TableSectionAdapterInput {
    
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
    
    func viewForHeader(in tableView: UITableView, section: Int) -> UIView? {
        return nil
    }
    
    func estimatedHeightForHeader(in tableView: UITableView, section: Int) -> CGFloat {
        return 0
    }
    
    func heightForHeader(in tableView: UITableView, section: Int) -> CGFloat {
        return 0
    }
}
