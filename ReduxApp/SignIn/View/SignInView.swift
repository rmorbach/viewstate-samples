//
//  OnboardingView.swift
//  ReduxApp
//
//  Created by Rodrigo Morbach on 14/10/19.
//  Copyright © 2019 Morbach Inc. All rights reserved.
//

import UIKit

protocol SignInViewDelegate: AnyObject {
}

class SignInView: UIView {
    
    lazy var loginFormStack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .fill
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 5.0
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var usernameTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.backgroundColor = .white
        textField.delegate = self
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.backgroundColor = .white
        textField.delegate = self
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    lazy var signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    weak var delegate: SignInViewDelegate?
    
    init(withDelegate delegate: SignInViewDelegate?){
        self.delegate = delegate
        super.init(frame: .zero)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func signIn() {
        
    }
  
}

extension SignInView: CodeView {
    func setupExtras() {
        signInButton.addTarget(self, action: #selector(signIn), for: .touchUpInside)
    }
    
    func setupComponents() {
        self.backgroundColor = .green
        // Form stack
        loginFormStack.addArrangedSubview(usernameTextField)
        loginFormStack.addArrangedSubview(passwordTextField)
        loginFormStack.addArrangedSubview(signInButton)
    
        addSubview(loginFormStack)
    }
    func setupConstraints() {
        
        loginFormStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40.0).isActive = true
        loginFormStack.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 20.0).isActive = true
        loginFormStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20.0).isActive = true
    
    }
}

extension SignInView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
