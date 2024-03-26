//
//  SignUpViewController+TextFieldsSetup.swift
//  Lesson10HW
//
//  Created by Алина Власенко on 26.03.2024.
//

import Foundation

extension SignUpViewController {
    
    // text fields restrictions setup
    func setupCardNumberTextField() {
        cardNumberTextFieldDelegate.setup(with: contentView.cardNumberTextField)
        cardNumberTextFieldDelegate.textDelegate = LimitTextLenghtToSixteenHendler()
    }
    
    func setupCvvTextField() {
        cvvTextFieldDelegate.setup(with: contentView.cvvTextField)
        cvvTextFieldDelegate.textDelegate = LimitTextLenghtToThreeHendler()
    }
    
}
