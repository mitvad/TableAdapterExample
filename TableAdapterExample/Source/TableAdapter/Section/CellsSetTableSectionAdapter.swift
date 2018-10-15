//
//  CellsSetTableSectionAdapter.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class CellsSetTableSectionAdapter {
    
    var cellAdapters: [TableCellAdapterInput] = []
}

// MARK: - TableSectionAdapterInput
extension CellsSetTableSectionAdapter: TableSectionAdapterInput {
    
    func registerCells(in tableView: UITableView) {
        cellAdapters.forEach { $0.registerCell(in: tableView) }
    }
    
    func numberOfRows(in section: Int) -> Int {
        return cellAdapters.count
    }
    
    func cellForRow(in tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        return cellAdapters[indexPath.row].cellForRow(in: tableView, at: indexPath)
    }
    
    func estimatedHeightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return cellAdapters[indexPath.row].estimatedHeightForRow(tableView, at: indexPath)
    }
    
    func heightForRow(_ tableView: UITableView, at indexPath: IndexPath) -> CGFloat {
        return cellAdapters[indexPath.row].heightForRow(tableView, at: indexPath)
    }
    
    func shouldHighlightRow(at indexPath: IndexPath) -> Bool {
        return cellAdapters[indexPath.row].shouldHighlightRow(at: indexPath)
    }
    
    func didSelectRow(in tableView: UITableView, at indexPath: IndexPath) {
        return cellAdapters[indexPath.row].didSelectRow(in: tableView, at: indexPath)
    }
    
    func didDeselectRow(in tableView: UITableView, at indexPath: IndexPath) {
        return cellAdapters[indexPath.row].didDeselectRow(in: tableView, at: indexPath)
    }
    
    func editActionsForRow(in tableView: UITableView, at indexPath: IndexPath) -> [UITableViewRowAction]? {
        return cellAdapters[indexPath.row].editActionsForRow(in: tableView, at: indexPath)
    }
    
    func canEditRow(in tableView: UITableView, at indexPath: IndexPath) -> Bool {
        return cellAdapters[indexPath.row].canEditRow(in: tableView, at: indexPath)
    }
}
