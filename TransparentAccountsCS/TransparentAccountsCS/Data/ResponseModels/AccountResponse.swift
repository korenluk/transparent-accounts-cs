//
//  AccountResponse.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import Foundation


struct AccountResponse: Codable {
    let accountNumber: String
    let bankCode: String
    let transparencyFrom: String
    let transparencyTo: String
    let publicationTo: String
    let actualizationDate: String
    let balance: Decimal
    let currency: String?
    let name: String
    let iban: String
}
