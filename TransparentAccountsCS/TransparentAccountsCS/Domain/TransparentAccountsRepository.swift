//
//  TransparentAccountsRepository.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//


protocol TransparentAccountsRepository {

    func getTransparentAccounts() async throws -> [Account]
}
