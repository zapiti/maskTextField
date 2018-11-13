//
//  TextFieldMask.swift
//  maskTextField
//
//  Created by Nathan Ranghel on 14/10/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//


import UIKit

class FALTextFieldMask : NSObject, UITextFieldDelegate {
    
    fileprivate static var sharedInstance : FALTextFieldMask!
    
    static func getInstance() -> FALTextFieldMask {
        
        if sharedInstance == nil {
            sharedInstance = FALTextFieldMask()
        }
        
        return sharedInstance
        
    }
    

    
    @objc func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if string.count == 0 {
            return true
        }
        
        var num = textField.text?.count
        
        if num != nil {
            
            if num! >= textField.maskFAL.count {
                return false
            }
            
            var charAtIndex = textField.maskFAL[textField.maskFAL.index(textField.maskFAL.startIndex, offsetBy: num!)]
            
            while( charAtIndex != "N" && charAtIndex != "F" && charAtIndex != "S" ) {
                
                textField.text = textField.text! + "\(charAtIndex)"
                
                num = num! + 1
                
                charAtIndex = textField.maskFAL[textField.maskFAL.index(textField.maskFAL.startIndex, offsetBy: num!)]
                
            }
            
            switch charAtIndex {
                
            case "N":
                let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
                
                return string.rangeOfCharacter(from: invalidCharacters, options: [], range:  string.startIndex..<string.endIndex) == nil
                
            case "F":
                let invalidCharacters = CharacterSet(charactersIn: "0123456789.,").inverted
                
                return string.rangeOfCharacter(from: invalidCharacters, options: [], range:  string.startIndex..<string.endIndex) == nil
                
            case "S":
                return true
                
            default:
                return false
                
            }
            
            
        }
        
        return false
        
    }
    
}
