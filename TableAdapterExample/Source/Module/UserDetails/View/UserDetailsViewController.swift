//
//  UserDetailsViewController.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController {
    var output: UserDetailsViewOutput!

    var tableViewAdapter: TableViewAdapterInput!
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
    }
}

// MARK: - UserDetailsViewInput
extension UserDetailsViewController: UserDetailsViewInput {
    func setupInitialState() {
        navigationItem.title = "User Details"
        
        tableViewAdapter.setup(tableView)
        
        tableView.reloadData()
    }
}
