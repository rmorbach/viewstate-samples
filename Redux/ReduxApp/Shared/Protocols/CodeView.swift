//
//  CustomView.swift
//  ReduxApp
//
//  Created by Rodrigo Morbach on 14/10/19.
//  Copyright © 2019 Morbach Inc. All rights reserved.
//

import Foundation

protocol CodeView {
    func setupComponents()
    func setupConstraints()
    func setupExtras()
    func setup()
}
extension CodeView {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtras()
    }
}
