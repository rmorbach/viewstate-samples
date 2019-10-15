//
//  Reducers.swift
//  ReduxApp
//
//  Created by Rodrigo Morbach on 14/10/19.
//  Copyright © 2019 Morbach Inc. All rights reserved.
//

import Foundation
import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState(currentState: OnBoardingState())
    return state
}

let appStore = Store(reducer: appReducer, state: nil)
