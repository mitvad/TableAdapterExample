//
//  ImagePickerModuleOutput.swift
//  TableAdapterExample
//
//  Created by Vadym Mitin on 10/29/19.
//  Copyright © 2019 Vadym Mitin. All rights reserved.
//

import UIKit

protocol ImagePickerModuleOutput: AnyObject {
    func imageDidPicked(_ image: UIImage)
    func imagePickerDidCancel()
}
