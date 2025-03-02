//
//  TransparentAccountsRepositoryImpl.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//


struct TransparentAccountsRepositoryImpl: TransparentAccountsRepository {
    private let dataSource: RemoteTransparentAccountsDataSource
    
    init(dataSource: RemoteTransparentAccountsDataSource) {
        self.dataSource = dataSource
    }
    
    func getTransparentAccounts() async throws -> [Account] {
        let accounts = try await dataSource.getTransparentAccountsList()
        return accounts.accounts.map { TransparentAccountsMapper.map(account: $0) }
    }
}
