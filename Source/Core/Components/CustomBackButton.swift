//
//  CustomBackButton.swift
//  desafioAlelo
//
//  Created by Hugo Silva on 17/11/23.
//

import SwiftUI

struct CustomBackButton: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .bold()
                .font(.title3)
                .foregroundStyle(.themePrimary)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    CustomBackButton()
}
