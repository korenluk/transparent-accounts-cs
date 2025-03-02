//
//  GetTransparentAccountsUseCase.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//


struct GetTransparentAccountsUseCase {
    let repository: TransparentAccountsRepository
    
    func getAccounts() async throws -> [Account] {
        try await repository.getTransparentAccounts()
    }
}
