//
//  UserDetailsPresenter.swift
//  TableAdapterExample
//
//  Created by mitvad on 15/10/2018.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import Foundation

class UserDetailsPresenter {

	var router: UserDetailsRouterInput!
	
    weak var view: UserDetailsViewInput!
    
    let user: User
    
    init(user: User) {
        self.user = user
    }
}

// MARK: - UserDetailsViewOutput
extension UserDetailsPresenter: UserDetailsViewOutput {
    
    func viewIsReady() {
        view.setupInitialState()
    }
}

// MARK: - UserDetailsAvatarTableCellAdapterOutput
extension UserDetailsPresenter: UserDetailsAvatarTableCellAdapterOutput {
    
    func avatarDisplayModel() -> UserDetailsAvatarCellDisplayModel {
        var url: URL
        
        if let avatarURL = user.avatarURL {
            url = URL(string: avatarURL)!
        } else {
            url = URL(string: "https://media.istockphoto.com/photos/businessman-silhouette-as-avatar-or-default-profile-picture-picture-id476085198?k=6&m=476085198&s=612x612&w=0&h=5cDQxXHFzgyz8qYeBQu2gCZq1_TN0z40e_8ayzne0X0=")!
        }
        
        return UserDetailsAvatarCellDisplayModel(avatarURL: url)
    }
    
    func avatarDidTouch() {
        let configuration = AlertScreenConfiguration(title: nil, message: nil)
        
        let cameraTitle = "screen.alert.button.camera".localized()
        let cameraAction = AlertScreenAction(title: cameraTitle, style: .default) { [weak self] in
            guard let strongSelf = self else { return }
            
//            strongSelf.imagePickerModule = strongSelf.router.showCameraPicker(moduleOutput: strongSelf, allowsEditing: true)
        }
        
        let photoLibraryTitle = "screen.alert.button.photoLibrary".localized()
        let photoLibratyAction = AlertScreenAction(title: photoLibraryTitle, style: .default) { [weak self] in
            guard let strongSelf = self else { return }
            
//            strongSelf.imagePickerModule = strongSelf.router.showGalleryPicker(moduleOutput: strongSelf, allowsEditing: true)
        }
        
        let cancelTitle = "screen.alert.button.cancel".localized()
        let cancelAction = AlertScreenAction(title: cancelTitle, style: .cancel, handler: nil)
        
        configuration.addAction(cameraAction)
        configuration.addAction(photoLibratyAction)
        configuration.addAction(cancelAction)
        
        router.presentActionSheet(configuration: configuration)
    }
}

// MARK: - UserDetailsFirstNameTableCellAdapterOutput
extension UserDetailsPresenter: UserDetailsFirstNameTableCellAdapterOutput {
    
    func firatNameDisplayModel() -> UserDetailsNameCellDisplayModel {
        return UserDetailsNameCellDisplayModel(text: user.firstName)
    }
}

// MARK: - UserDetailsLastNameTableCellAdapterOutput
extension UserDetailsPresenter: UserDetailsLastNameTableCellAdapterOutput {
    
    func lastNameDisplayModel() -> UserDetailsNameCellDisplayModel {
        return UserDetailsNameCellDisplayModel(text: user.lastName)
    }
}

// MARK: - UserDetailsLastNameTableCellAdapterOutput
extension UserDetailsPresenter: UserDetailsLastPositionTableCellAdapterOutput {
    
    func positionDisplayModel() -> UserDetailsPositionCellDisplayModel {
        let position = user.position ?? "Not specified"
        var experience: String
        
        if user.experienceYears <= 1 {
            experience = "Junior developer"
        } else if user.experienceYears <= 3 {
            experience = "Middle software engineer"
        } else {
            experience = "Senior software engineer"
        }
        
        return UserDetailsPositionCellDisplayModel(position: position, experience: experience)
    }
}
