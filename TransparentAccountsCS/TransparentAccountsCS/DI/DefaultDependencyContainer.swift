//
//  DefaultDependencyContainer.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//


class DefaultDependencyContainer: DependencyResolving {
    
    // MARK: - Managers
    
    func resolveAPIManager() -> APIManaging {
        return APIManager()
    }
}
