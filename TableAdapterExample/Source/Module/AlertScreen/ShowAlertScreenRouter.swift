//
//  ShowAlertScreenRouter.swift
//  TableAdapterExample
//
//  Created by Vadym Mitin on 10/29/19.
//  Copyright © 2019 Vadym Mitin. All rights reserved.
//

import UIKit

protocol ShowAlertScreenRouter: AnyObject {
    var viewController: UIViewController! { get }
    
    func presentAlertScreen(configuration: AlertScreenConfiguration)
}

extension ShowAlertScreenRouter {
    func presentAlertScreen(configuration: AlertScreenConfiguration) {
        let controller = UIAlertController(title: configuration.title,
                                           message: configuration.message,
                                           preferredStyle: .alert)
        
        if configuration.actions.isEmpty {
            let action = UIAlertAction(title: "screen.alert.button.ok".localized(),
                                       style: .cancel) { _ in
                                        
                                        controller.dismiss(animated: true, completion: nil)
            }
            
            controller.addAction(action)
        } else {
            for actionConfig in configuration.actions {
                let action = UIAlertAction(title: actionConfig.title,
                                           style: actionConfig.style.value) { _ in
                                            actionConfig.handler?()
                                            
                                            controller.dismiss(animated: true, completion: nil)
                }
                
                controller.addAction(action)
            }
        }
        
        viewController.present(controller, animated: true, completion: nil)
    }
    
    func presentActionSheet(configuration: AlertScreenConfiguration) {
        let controller = UIAlertController(title: configuration.title,
                                           message: configuration.message,
                                           preferredStyle: .actionSheet)
        
        if configuration.actions.isEmpty {
            let action = UIAlertAction(title: "screen.alert.button.ok".localized(),
                                       style: .cancel) { _ in
                                        
                                        controller.dismiss(animated: true, completion: nil)
            }
            
            controller.addAction(action)
        } else {
            for actionConfig in configuration.actions {
                let action = UIAlertAction(title: actionConfig.title,
                                           style: actionConfig.style.value) { _ in
                                            actionConfig.handler?()
                                            
                                            controller.dismiss(animated: true, completion: nil)
                }
                
                controller.addAction(action)
            }
        }
        
        viewController.present(controller, animated: true, completion: nil)
    }
}
