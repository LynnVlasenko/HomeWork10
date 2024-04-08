//
//  SignUpView+KeybordTypeExtension.swift
//  Lesson10HW
//
//  Created by Алина Власенко on 25.03.2024.
//

import Foundation

extension SignUpView {
    
    // Set Keyboard Types for SignUpView TextFields
    func keyboardsTypes() {
        
        emailNameTextField.keyboardType = .emailAddress
        
        [passwordTextField, confirmPasswordTextField, cvvTextField]
            .forEach { $0.isSecureTextEntry = true }
        
        [cardNumberTextField, cvvTextField]
            .forEach { $0.keyboardType = .numberPad }
        
        [firstNameTextField, lastNameTextField, countryTextField,
         cityTextField, addressTextField, expDateTextField].forEach {
            $0.keyboardType = .default
        }
    }
}
