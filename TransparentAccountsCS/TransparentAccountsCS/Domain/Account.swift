//
//  Account.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import Foundation


struct Account: Codable {
    let accountNumber: String
    let bankCode: String
    let balance: Decimal
    let currency: String
    let name: String
    let iban: String
}

extension Account {
    static let mock = Account(
        accountNumber: "000000-0109213309",
        bankCode: "0800",
        balance: 165939.97,
        currency: "CZK",
        name: "Společenství Praha 4, Obětí 6.května 553",
        iban: "CZ75 0800 0000 0001 0921 3309"
    )
}
