//
//  DependencyResolving.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import UIKit


protocol DependencyResolving {
    func resolveAPIManager() -> APIManaging
}

@MainActor
extension DependencyResolving {
    func resolveRemoteTransparentAccountsDataSource() -> RemoteTransparentAccountsDataSource {
        RemoteTransparentAccountsDataSource(apiManager: resolveAPIManager())
    }
    
    func resolveTransparentAccountsRepository() -> TransparentAccountsRepository {
        TransparentAccountsRepositoryImpl(dataSource: resolveRemoteTransparentAccountsDataSource())
    }
    
    func resolveGetTransparentAccountsUseCase() -> GetTransparentAccountsUseCase {
        GetTransparentAccountsUseCase(repository: resolveTransparentAccountsRepository())
    }
}
