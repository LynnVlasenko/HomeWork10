//
//  TextFieldDelegate.swift
//  Lesson10HW
//
//  Created by Алина Власенко on 26.03.2024.
//

import Foundation
import UIKit

class TextFieldDelegate: NSObject {
    
    // add delegat - protocol
    var textDelegate: TextFieldCharactersChanger?
    
    // taking the value of a certain text field
    func setup(with textField: UITextField) {
        textField.delegate = self
    }
}

extension TextFieldDelegate: UITextFieldDelegate {
    
    // implementation the function from the protocol, adding it to the native function of UITextFieldDelegate
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let textDelegate = textDelegate {
            return textDelegate.textField(in: textField.text ?? "", shouldChangeCharactersIn: range, replacementString: string)
        }
        return true
    }
}
