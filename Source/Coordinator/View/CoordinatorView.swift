//
//  CoordinatorView.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import SwiftUI

struct CoordinatorView: View {
    @StateObject var viewModel = CoordinatorViewModel.shared
    
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                switch viewModel.uiState {
                case .splash: SplashView()
                case .home: HomeView()
                }
            }
            .environmentObject(ScreenSize(size: geo.size))
        }
    }
}

#Preview {
    CoordinatorView()
}

