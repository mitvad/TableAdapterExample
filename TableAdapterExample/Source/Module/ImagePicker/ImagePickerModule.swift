//
//  ImagePickerModule.swift
//  TableAdapterExample
//
//  Created by Vadym Mitin on 10/29/19.
//  Copyright © 2019 Vadym Mitin. All rights reserved.
//

import UIKit

class ImagePickerModule: NSObject {
    weak var presentingViewController: UIViewController!
    weak var moduleOutput: ImagePickerModuleOutput!
    
    init(presentingViewController: UIViewController, moduleOutput: ImagePickerModuleOutput) {
        self.presentingViewController = presentingViewController
        self.moduleOutput = moduleOutput
    }
    
    func showCameraPicker(allowsEditing: Bool) {
        openImagePicker(.camera, allowsEditing: allowsEditing)
    }
    
    func showGalleryPicker(allowsEditing: Bool) {
        openImagePicker(.photoLibrary, allowsEditing: allowsEditing)
    }
    
    func openImagePicker(_ sourceType: UIImagePickerController.SourceType, allowsEditing: Bool) {
        guard UIImagePickerController.isSourceTypeAvailable(sourceType) else {
            return
        }
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = allowsEditing
        picker.sourceType = sourceType
        if sourceType == .camera {
            picker.cameraDevice = .front
        }
        
        presentingViewController.present(picker, animated: true, completion: nil)
    }
}

extension ImagePickerModule: ImagePickerModuleInput {
    
    func dismiss(completion: (() -> Void)?) {
        presentingViewController.dismiss(animated: true, completion: completion)
    }
}

extension ImagePickerModule: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let chosenImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            moduleOutput.imageDidPicked(chosenImage)
        } else if let chosenImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            moduleOutput.imageDidPicked(chosenImage)
        } else {
            moduleOutput.imagePickerDidCancel()
        }
    }
    
    @objc internal func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        moduleOutput.imagePickerDidCancel()
    }
}
