//
//  SplashView.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.themeSecondary
                .ignoresSafeArea()
            
            VStack {
                Text("Desafio Exacta")
                    .font(.title)
                HStack (spacing: 4) {
                    Text("feito para")
                    Text("Alelo")
                        .foregroundStyle(.themePrimary)
                        .bold()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    CoordinatorViewModel.shared.goToHome()
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
