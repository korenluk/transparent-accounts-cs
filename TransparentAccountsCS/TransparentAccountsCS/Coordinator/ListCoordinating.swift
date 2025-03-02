//
//  ListCoordinating.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import UIKit


@MainActor
protocol ListCoordinatorDelegate {
    func select()
}

@MainActor
class ListCoordinator: ListCoordinatorDelegate {
    private let resolver: DependencyResolving
    private weak var navController: UINavigationController?

    init(navController: UINavigationController, resolver: DependencyResolving) {
        self.navController = navController
        self.resolver = resolver
    }

    deinit {
        print("LIST DEINIT")
    }

    func begin() -> UIViewController {
        let viewModel = ListViewModel(
            deps: .init(
                getTransparentAccounts: resolver.resolveGetTransparentAccountsUseCase()
            )
        )
        viewModel.coordinator = self
        let viewController = ListView(viewModel: viewModel).asViewController()
        
        return viewController
    }

    func select() {
    }
}
