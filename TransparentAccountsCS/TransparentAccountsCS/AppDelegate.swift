//
//  AppDelegate.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import UIKit
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
    var window: UIWindow?

    var coordinator: RootCoordinator?

    let container = DefaultDependencyContainer()

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        coordinator = RootCoordinator(window: window, resolver: container)
        let rootViewController = coordinator?.begin()

        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        self.window = window

        return true
    }
}
