//
//  AlertScreenConfiguration.swift
//  TableAdapterExample
//
//  Created by Vadym Mitin on 10/29/19.
//  Copyright © 2019 Vadym Mitin. All rights reserved.
//

import UIKit

class AlertScreenConfiguration {
    var title: String?
    var message: String?
    
    var actions: [AlertScreenAction] = []
    
    init(title: String?, message: String?) {
        self.title = title
        self.message = message
    }
    
    func addAction(_ action: AlertScreenAction) {
        actions.append(action)
    }
}

class AlertScreenAction {
    var title: String
    var style: AlertScreenActionStyle
    var handler: (() -> Void)?
    
    init(title: String, style: AlertScreenActionStyle, handler: (() -> Void)?) {
        self.title = title
        self.style = style
        self.handler = handler
    }
}

enum AlertScreenActionStyle {
    case `default`
    case cancel
    case destructive
    
    var value: UIAlertAction.Style {
        switch self {
        case .`default`:
            return UIAlertAction.Style.default
        case .cancel:
            return UIAlertAction.Style.cancel
        case .destructive:
            return UIAlertAction.Style.destructive
        }
    }
}
