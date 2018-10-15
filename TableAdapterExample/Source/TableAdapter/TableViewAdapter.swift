//
//  TableViewAdapter.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class TableViewAdapter: NSObject {
    
    var sectionAdapters: [TableSectionAdapterInput] = []
}

// MARK: - TableViewAdapterInput
extension TableViewAdapter: TableViewAdapterInput {
    
    func setup(_ tableView: UITableView) {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
        
        tableView.tableFooterView = UIView()
        
        sectionAdapters.forEach { $0.registerCells(in: tableView) }
    }
}

// MARK: - UITableViewDataSource
extension TableViewAdapter: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionAdapters.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionAdapters[section].numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return sectionAdapters[indexPath.section].cellForRow(in: tableView, at: indexPath)
    }
}

// MARK: - UITableViewDelegate
extension TableViewAdapter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return sectionAdapters[indexPath.section].estimatedHeightForRow(tableView, at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return sectionAdapters[indexPath.section].heightForRow(tableView, at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return sectionAdapters[section].viewForHeader(in: tableView, section: section)
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return sectionAdapters[section].estimatedHeightForHeader(in: tableView, section: section)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return sectionAdapters[section].heightForHeader(in: tableView, section: section)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return sectionAdapters[indexPath.section].didSelectRow(in: tableView, at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return sectionAdapters[indexPath.section].shouldHighlightRow(at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        sectionAdapters[indexPath.section].didDeselectRow(in: tableView, at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        return sectionAdapters[indexPath.section].editActionsForRow(in: tableView, at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return sectionAdapters[indexPath.section].canEditRow(in: tableView, at: indexPath)
    }
}
