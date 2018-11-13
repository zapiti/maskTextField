//
//  MaskExtension.swift
//  maskTextField
//
//  Created by Nathan Ranghel on 14/10/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import UIKit

private var xoAssociationKey: UInt8 = 0

extension UITextField {
    
    open var maskFAL: String! {
        get {
            return objc_getAssociatedObject(self, &xoAssociationKey) as? String
        }
        set(newValue) {
            objc_setAssociatedObject(self, &xoAssociationKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
    
}
