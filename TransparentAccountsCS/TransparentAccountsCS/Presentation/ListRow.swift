//
//  ListRow.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import SwiftUI


struct ListRow: View {
    let account: Account
    
    var body: some View {
        VStack {
            Text(account.name)
            Text(account.accountNumber)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .strokeBorder(Color(.blue), lineWidth: 1)
        )
    }
}

#Preview {
    ListRow(account: .mock)
}
