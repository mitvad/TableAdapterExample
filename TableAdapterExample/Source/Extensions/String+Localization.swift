//
//  String+Localization.swift
//  TableAdapterExample
//
//  Created by Vadym Mitin on 10/29/19.
//  Copyright © 2019 Vadym Mitin. All rights reserved.
//

import Foundation

extension String {
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
}
