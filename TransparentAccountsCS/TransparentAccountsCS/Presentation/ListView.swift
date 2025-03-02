//
//  ListView.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import SwiftUI


struct ListView: View {
    
    // MARK: - Property
    
    @ObservedObject var viewModel: ListViewModel
    
    var body: some View {
        VStack {
            List(viewModel.state.accounts, id: \.accountNumber) { account in
                ListRow(account: account)
            }
            .listStyle(.plain)
        }
        .navigationTitle("Transparetní účty")
        .task {
            await viewModel.task()
        }
    }
}
