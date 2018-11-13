//
//  ViewController.swift
//  maskTextField
//
//  Created by Nathan Ranghel on 14/10/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //let textfield : CurrencyTextField = {
    
//     //textfield = CurrencyTextField(frame: CGRect(x: 50, y: 50, width: 300, height: 50))
//        textfield.translatesAutoresizingMaskIntoConstraints = false
//        textfield.placeholder = "Example"
//    //    textfield.delegate = .self.UITextFieldDelegate
//        textfield.borderStyle = .line
//        return textfield
//        }()
//
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
           let textfield = UITextField()
//       textfield = CurrencyTextField(frame: CGRect(x: 50, y: 50, width: 300, height: 50))
//       textfield.placeholder = "Example"
//       //99 textfield.delegate = view.delete(<#T##sender: Any?##Any?#>)
//       textfield.borderStyle = .line
        textfield.delegate = FALTextFieldMask.getInstance()
        textfield.maskFAL = "(NN) NNNN-NNNN"
//        let currency = NumberFormatter()
//        currency.usesGroupingSeparator = true
//        currency.numberStyle = .currency
//        currency.locale = Locale.current
//        let currencys = (textField.text! as NSStrin9g).doubleValue
//        
//        textField.text = currency.string(from: NSNumber(value: currencys))
       // textFieldShouldClear(textfield.self)
        
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "Example"
        
        //    textfield.delegate = .self.UITextFieldDelegate
        textfield.borderStyle = .line
//        textfield.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        textfield.heightAnchor.constraint(equalToConstant: 250).isActive = true
//        textfield.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
         view.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(textfield)
        textfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        textfield.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        textfield.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        
    }
  


}

