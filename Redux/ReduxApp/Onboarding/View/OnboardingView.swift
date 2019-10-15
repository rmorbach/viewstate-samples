//
//  OnboardingView.swift
//  ReduxApp
//
//  Created by Rodrigo Morbach on 14/10/19.
//  Copyright © 2019 Morbach Inc. All rights reserved.
//

import UIKit

protocol OnboardingViewDelegate: AnyObject {
    func onboardingDidSelectSignIn()
    func onboardingDidSelectSignUp()
}

class OnboardingView: UIView {
    
    lazy var imageView: UIImageView = {
        let image = UIImage(named: "image-redux")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var buttonsStack: UIStackView = {
       let stack = UIStackView()
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 10.0
        stack.axis = .horizontal
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var signInButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Registrar", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    weak var delegate: OnboardingViewDelegate?
    
    init(withDelegate delegate: OnboardingViewDelegate?){
        self.delegate = delegate
        super.init(frame: .zero)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func signIn() {
        delegate?.onboardingDidSelectSignIn()
    }
    @objc func signUp() {
        delegate?.onboardingDidSelectSignUp()
    }
}

extension OnboardingView: CodeView {
    func setupExtras() {
        signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
        signInButton.addTarget(self, action: #selector(signIn), for: .touchUpInside)
    }
    
    func setupComponents() {
        self.backgroundColor = .green
        
    
        // Buttons stack
        buttonsStack.addArrangedSubview(signInButton)
        buttonsStack.addArrangedSubview(signUpButton)
        
        addSubview(imageView)
        addSubview(buttonsStack)
    }
    func setupConstraints() {
        
        imageView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor, constant: 0.0).isActive = true
        imageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 0.0).isActive = true
        imageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
        imageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.8).isActive = true
        
        
        buttonsStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0.0).isActive = true
        buttonsStack.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 20.0).isActive = true
        buttonsStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20.0).isActive = true
        
        buttonsStack.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        
    }
}
