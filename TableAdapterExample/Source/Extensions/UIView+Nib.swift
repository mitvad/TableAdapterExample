//
//  UIView+Nib.swift
//  TableAdapterExample
//
//  Created by Vadym on 1510//18.
//  Copyright © 2018 Vadym Mitin. All rights reserved.
//

import UIKit

extension UIView {
    
    static func viewNib() -> UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    static func instantiateFromNib() -> UIView {
        let nib = viewNib()
        let view = nib.instantiate(withOwner: nil, options: nil).first as? UIView
        
        return view!
    }
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
