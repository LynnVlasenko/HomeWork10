//
//  LimitTextLenghtToSixteenHendler.swift
//  Lesson10HW
//
//  Created by Алина Власенко on 26.03.2024.
//

import Foundation

class LimitTextLenghtToSixteenHendler: TextFieldCharactersChanger {
    
    // implementation of the function from the protocol + modification it for our needs
    func textField(in enteredText: String, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let fullCardNumberString = enteredText + string
            return fullCardNumberString.count <= 16
    }
}
