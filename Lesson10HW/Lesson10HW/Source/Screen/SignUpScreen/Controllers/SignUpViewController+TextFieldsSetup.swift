//
//  SignUpViewController+TextFieldsSetup.swift
//  Lesson10HW
//
//  Created by Алина Власенко on 26.03.2024.
//

import UIKit

extension SignUpViewController: UITextFieldDelegate {
    
    // text fields restrictions setup
    func setupCardNumberTextField() {
        cardNumberTextFieldDelegate.setup(with: contentView.cardNumberTextField)
        cardNumberTextFieldDelegate.textDelegate = LimitTextLenghtToSixteenHendler()
    }
    
    func setupCvvTextField() {
        cvvTextFieldDelegate.setup(with: contentView.cvvTextField)
        cvvTextFieldDelegate.textDelegate = LimitTextLenghtToThreeHendler()
    }
    
    
    func setUpTextFieldDelegats() {
         [contentView.emailNameTextField, contentView.passwordTextField, contentView.confirmPasswordTextField,
          contentView.cvvTextField, contentView.cardNumberTextField, contentView.firstNameTextField,
          contentView.lastNameTextField, contentView.countryTextField, contentView.cityTextField,
          contentView.addressTextField, contentView.expDateTextField].forEach({ $0.delegate = self })
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.returnKeyType = .done
        print("textFieldDidBeginEditing")
    }
}
