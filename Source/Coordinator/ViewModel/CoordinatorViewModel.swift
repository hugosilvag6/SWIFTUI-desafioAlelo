//
//  CoordinatorViewModel.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import Foundation

class CoordinatorViewModel: ObservableObject {
    @Published var uiState: CoordinatorUIState = .splash
    
    static let shared = CoordinatorViewModel()
    private init() {}
}

extension CoordinatorViewModel {
    func goToHome() {
        CoordinatorViewModel.shared.uiState = .home
    }
}
