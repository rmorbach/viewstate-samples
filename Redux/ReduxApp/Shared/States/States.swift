//
//  States.swift
//  ReduxApp
//
//  Created by Rodrigo Morbach on 14/10/19.
//  Copyright © 2019 Morbach Inc. All rights reserved.
//

import Foundation
import ReSwift

protocol AppStateType: StateType { }

struct AppState: StateType {
    var currentState: AppStateType = OnBoardingState()
}

struct SigningUpState: AppStateType { }
struct SigningInState: AppStateType { }
struct OnBoardingState: AppStateType { }
struct LoggedInState: AppStateType {
    let user: String
}

