//
//  SceneDelegate.swift
//  ReduxApp
//
//  Created by Rodrigo Morbach on 07/10/19.
//  Copyright © 2019 Morbach Inc. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        // Override point for customization after application launch.
        let screenSize = windowScene.coordinateSpace.bounds
        
        let appWindow = UIWindow(frame: screenSize)
        
        appWindow.windowScene = windowScene
        
        let onboardingViewController = OnboardinViewController()
        
        let rootViewController = UINavigationController(rootViewController: onboardingViewController)
        
        appWindow.rootViewController = rootViewController
        
        appWindow.makeKeyAndVisible()
        
        self.window = appWindow
    }


}

