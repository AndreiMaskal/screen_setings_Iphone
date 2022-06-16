//
//  AppDelegate.swift
//  screen_setings_project
//
//  Created by Andrei Maskal on 30/05/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        setWindow()
        return true
    }

    func setWindow() {

        let navigationController = UINavigationController(rootViewController: ViewController())

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}


