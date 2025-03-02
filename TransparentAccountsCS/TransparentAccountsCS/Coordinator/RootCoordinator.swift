//
//  RootCoordinator.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import UIKit


@MainActor
class RootCoordinator: Coordinating {
    private weak var window: UIWindow?
    private let resolver: DependencyResolving

    init(window: UIWindow, resolver: DependencyResolving) {
        self.window = window
        self.resolver = resolver
    }

    func begin() -> UIViewController {
        let viewController = createListController()
        set(rootController: viewController)
        return viewController
    }
}

private extension RootCoordinator {
    func set(rootController: UIViewController) {
        window?.rootViewController = rootController
    }

    func createListController() -> UIViewController {
        let navController = UINavigationController()

        let coordinator = ListCoordinator(navController: navController, resolver: resolver)
        let viewController = coordinator.begin()
        navController.viewControllers = [viewController]
        return navController
    }
}
