//
//  ListViewModel.swift
//  TransparentAccountsCS
//
//  Created by Lukas Korinek on 02.03.2025.
//

import SwiftUI


// MARK: - View State

struct ListViewState {
    var isLoading = false
    var alert: Alert?
    var accounts: [Account] = []
}


// MARK: - ViewModel

@MainActor
final class ListViewModel: ObservableObject {
    
    var coordinator: ListCoordinatorDelegate?
    
    struct Dependencies {
        let getTransparentAccounts: GetTransparentAccountsUseCase
    }
    
    
    // MARK: - State

    @Published var state = ListViewState()


    // MARK: - Property

    private let deps: Dependencies

    
    // MARK: - Init

    init(deps: Dependencies) {
        self.deps = deps
    }
    
    
    // MARK: - Internal methods
    
    func task() async {
        do {
            state.accounts = try await deps.getTransparentAccounts.getAccounts()
        } catch {
            print(error)
        }
    }
}


// MARK: - Actions

extension ListViewModel {

}


// MARK: - Private methods

private extension ListViewModel {
    
    
}
