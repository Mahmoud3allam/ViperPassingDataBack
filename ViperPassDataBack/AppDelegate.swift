//
//  AppDelegate.swift
//  ViperPassDataBack
//
//  Created by Alchemist on 7/16/20.
//  Copyright © 2020 Lodex-Solutions. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UINavigationController(rootViewController: FirstSceneRouter.createAnModule())
        self.window = window
        window.makeKeyAndVisible()
        return true
    }


}

