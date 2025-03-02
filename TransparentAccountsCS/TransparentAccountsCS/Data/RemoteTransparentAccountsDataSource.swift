//
//  RemoteTransparentAccountsDataSource.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//


struct RemoteTransparentAccountsDataSource {
    private let apiManager: APIManaging
    
    init(apiManager: APIManaging) {
        self.apiManager = apiManager
    }
    
    func getTransparentAccountsList() async throws -> TransparentAccountsListResponse {
        try await apiManager.request(url: Router.list)
    }
}
