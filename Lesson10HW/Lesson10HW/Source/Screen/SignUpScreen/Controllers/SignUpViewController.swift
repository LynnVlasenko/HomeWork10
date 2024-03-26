//
//  SignUpViewController.swift
//  Lesson10HW
//

//

import UIKit

class SignUpViewController: UIViewController {
    
    // add textField delegates
    let textLenghtLimiterToSixteen = TextLenghtLimiterToSixteenDelegate()
    let textLenghtLimiterToThree = TextLenghtLimiterToThreeDelegate()
    
    @IBOutlet weak var contentView: SignUpView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subscrubeNotifications()
        contentView.keyboardsTypes()
        setup()
    }
    
    // setup delegates
    func setup() {
        contentView.cardNumberTextField.delegate = textLenghtLimiterToSixteen
        contentView.cvvTextField.delegate = textLenghtLimiterToThree
    }
}

