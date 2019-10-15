//
//  SignInViewController.swift
//  ReduxApp
//
//  Created by Rodrigo Morbach on 14/10/19.
//  Copyright © 2019 Morbach Inc. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {


    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Not used")
    }
    
    override func loadView() {
         view = SignInView(withDelegate: self)
    }
    
}

extension SignInViewController: SignInViewDelegate {
    
}
