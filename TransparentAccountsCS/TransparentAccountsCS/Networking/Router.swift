//
//  Router.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import Foundation


struct Router {
    static private let baseURL = "https://webapi.developers.erstegroup.com/api/csas/public/sandbox/v3/transparentAccounts"
    
    static let list = URL(string: baseURL)!
}
