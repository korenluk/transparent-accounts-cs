//
//  TransparentAccountsMapper.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//


enum TransparentAccountsMapper {
    static func map(account: AccountResponse) -> Account {
        Account(
            accountNumber: account.accountNumber,
            bankCode: account.bankCode,
            balance: account.balance,
            currency: account.currency ?? "CZK",
            name: account.name,
            iban: account.iban
        )
    }
}
