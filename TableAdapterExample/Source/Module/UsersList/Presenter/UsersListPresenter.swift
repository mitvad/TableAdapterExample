//
//  UsersListPresenter.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import Foundation

class UsersListPresenter {

	var router: UsersListRouterInput!

    weak var view: UsersListViewInput!
    
    var users: [User] = []
}

// MARK: - UsersListViewOutput
extension UsersListPresenter: UsersListViewOutput {
    
    func viewIsReady() {
        users = generateFakeUsers()
        
        view.setupInitialState()
    }
}

// MARK: - UsersTableSectionAdapterOutput
extension UsersListPresenter: UsersTableSectionAdapterOutput {
    
    func numberOfUsers() -> Int {
        return users.count
    }
    
    func userDisplayModel(at indexPath: IndexPath) -> UserCellDisplayModel {
        let user = users[indexPath.row]
        let position = user.position ?? ""
        
        return UserCellDisplayModel(firstName: user.firstName, lastName: user.lastName, position: position)
    }
    
    func didSelectUser(at indexPath: IndexPath) {
        let user = users[indexPath.row]
        
        router.showUserDetails(user: user)
    }
}

// MARK: - Private
extension UsersListPresenter {
    
    private func generateFakeUsers() -> [User] {
        let user0AvatarURL = "https://images.vexels.com/media/users/3/145908/preview2/52eabf633ca6414e60a7677b0b917d92-male-avatar-maker.jpg"
        
        let user0 = User(firstName: "Nik", lastName: "Sollo", experienceYears: 3, position: "iOS", avatarURL: user0AvatarURL)
        let user1 = User(firstName: "Frank", lastName: "Gool", experienceYears: 2, position: "Android", avatarURL: nil)
        let user2 = User(firstName: "Oli", lastName: "Star", experienceYears: 1, position: nil, avatarURL: nil)
        let user3 = User(firstName: "Ololo", lastName: "Hahahasev", experienceYears: 0, position: nil, avatarURL: nil)
        
        return [user0, user1, user2, user3]
    }
}
