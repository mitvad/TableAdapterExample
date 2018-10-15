//
//  UsersListViewController.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UsersListViewController: UIViewController {
    var output: UsersListViewOutput!

    var tableViewAdapter: TableViewAdapterInput!
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output.viewIsReady()
    }
}

// MARK: - UsersListViewInput
extension UsersListViewController: UsersListViewInput {
    
    func setupInitialState() {
        navigationItem.title = "Users"
        
        tableViewAdapter.setup(tableView)
        
        tableView.reloadData()
    }
}
