//
//  TextFieldCharactersChanger.swift
//  Lesson10HW
//
//  Created by Алина Власенко on 26.03.2024.
//

import Foundation

protocol TextFieldCharactersChanger {
    
    // duplicating the function from UITextFieldDelegate - modifying it for own needs
    func textField(in enteredText: String, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
}
