//
//  TextLenghtLimiterToThreeDelegate.swift
//  Lesson10HW
//
//  Created by Алина Власенко on 26.03.2024.
//

import UIKit

class TextLenghtLimiterToThreeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let fullCardNumberString = (textField.text ?? "") + string
            return fullCardNumberString.count <= 3
    }
}
