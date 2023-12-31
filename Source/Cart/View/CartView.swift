//
//  CartView.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import SwiftUI

struct CartView: View {
    @StateObject var viewModel = CartViewModel.shared
    @Environment(\.dismiss) var dismiss
    @State var showingAlert = false
    
    var body: some View {
        ZStack {
            Color.themeSecondary
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                CustomBackButton()
                .overlay {
                    Text("Carrinho")
                        .font(.title2)
                        .bold()
                }
                
                Spacer()
                
                if !viewModel.products.isEmpty {
                    ScrollView {
                        VStack(spacing: 16) {
                            ForEach($viewModel.products) { product in
                                CartProductCard(item: product)
                            }
                        }
                        .padding(.bottom, 100)
                        .padding(16)
                    }
                } else {
                    Text("Carrinho vazio!")
                        .foregroundStyle(.themeSecondary)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.themePrimary)
                        }
                }
                
                Spacer()
                
                if !viewModel.products.isEmpty {
                    VStack (spacing: 16) {
                        Divider()
                        
                        HStack(alignment: .center) {
                            Text("Total:")
                            Text(viewModel.getTotalValue())
                                .bold()
                                .font(.title2)
                            
                            Spacer()
                            
                            Button {
                                showingAlert = true
                            } label: {
                                Text("Comprar")
                                    .padding()
                                    .foregroundStyle(.white)
                                    .background {
                                        RoundedRectangle(cornerRadius: 15)
                                    }
                            }
                            .alert(isPresented: $showingAlert) {
                                            Alert(title: Text("Em desenvolvimento"), dismissButton: .default(Text("OK")))
                                        }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .foregroundStyle(.themePrimary)
            .toolbar(.hidden)
        }
    }
}

#Preview {
    CartView()
}
