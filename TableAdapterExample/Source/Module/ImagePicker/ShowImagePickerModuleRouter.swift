//
//  ShowImagePickerModuleRouter.swift
//  TableAdapterExample
//
//  Created by Vadym Mitin on 10/29/19.
//  Copyright © 2019 Vadym Mitin. All rights reserved.
//

import UIKit

protocol ShowImagePickerModuleRouter {
    var viewController: UIViewController! { get }
    
    func showCameraPicker(moduleOutput: ImagePickerModuleOutput, allowsEditing: Bool) -> ImagePickerModuleInput
    func showGalleryPicker(moduleOutput: ImagePickerModuleOutput, allowsEditing: Bool) -> ImagePickerModuleInput
}

extension ShowImagePickerModuleRouter {
    func showCameraPicker(moduleOutput: ImagePickerModuleOutput, allowsEditing: Bool) -> ImagePickerModuleInput {
        let imagePickerModule = ImagePickerModule(presentingViewController: viewController, moduleOutput: moduleOutput)
        imagePickerModule.showCameraPicker(allowsEditing: allowsEditing)
        
        return imagePickerModule
    }
    
    func showGalleryPicker(moduleOutput: ImagePickerModuleOutput, allowsEditing: Bool) -> ImagePickerModuleInput {
        let imagePickerModule = ImagePickerModule(presentingViewController: viewController, moduleOutput: moduleOutput)
        imagePickerModule.showGalleryPicker(allowsEditing: allowsEditing)
        
        return imagePickerModule
    }
}
