//
//  ViewController.swift
//  ReduxApp
//
//  Created by Rodrigo Morbach on 07/10/19.
//  Copyright © 2019 Morbach Inc. All rights reserved.
//

import UIKit
import ReSwift

class OnboardinViewController: UIViewController {

    override func loadView() {
        view = OnboardingView(withDelegate: self)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Not implemented")
    }
}

extension OnboardinViewController: OnboardingViewDelegate {
    func onboardingDidSelectSignIn() {
        // TODO - dispatch signInAction
    }
    func onboardingDidSelectSignUp() {
        // TODO - dispatch signUp Action
    }
}

