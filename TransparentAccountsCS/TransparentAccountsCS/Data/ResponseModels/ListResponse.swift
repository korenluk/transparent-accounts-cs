//
//  ListResponse.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//


struct TransparentAccountsListResponse: Codable {
    let pageNumber: Int
    let pageSize: Int
    let pageCount: Int
    let nextPage: Int
    let recordCount: Int
    let accounts: [AccountResponse]
}
