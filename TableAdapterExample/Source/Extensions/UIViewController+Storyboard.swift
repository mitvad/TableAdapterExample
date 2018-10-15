//
//  UIViewController+Storyboard.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit.UICollectionView

extension UIViewController {
    fileprivate static func storyboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil)
        
        return storyboard
    }
    
    static func instantiateFromStoryboard() -> UIViewController {
        let viewController = storyboard().instantiateViewController(withIdentifier: String(describing: self))
        
        return viewController
    }
}
