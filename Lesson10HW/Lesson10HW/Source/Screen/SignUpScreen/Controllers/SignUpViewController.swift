//
//  SignUpViewController.swift
//  Lesson10HW
//

//

import UIKit

class SignUpViewController: UIViewController {
    
    // add custom textField delegates
    let cardNumberTextFieldDelegate = TextFieldDelegate()
    let cvvTextFieldDelegate = TextFieldDelegate()
    
    @IBOutlet weak var contentView: SignUpView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        subscrubeNotifications()
        
        // keyboards types setup
        contentView.keyboardsTypes()
        
        // text fields restrictions setup
        setupCardNumberTextField()
        setupCvvTextField()
        
        setUpTextFieldDelegats()
    }
}

