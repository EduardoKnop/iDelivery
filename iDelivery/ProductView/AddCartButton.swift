//
//  AddCartButton.swift
//  iDelivery
//
//  Created by Eduardo Knop on 30/08/25.
//

import SwiftUI

struct AddCartButton: View {
    var body: some View {
        HStack {
            Image(systemName: "cart")
            Text("Add to Cart")
        }
        .padding(.horizontal, 32)
        .padding(.vertical, 16)
        .font(.title3)
        .bold()
        .background(Color.colorRed)
        .foregroundStyle(.white)
        .cornerRadius(32)
        .shadow(color: Color.colorRedDark.opacity(0.5), radius: 10, x: 6, y: 8)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AddCartButton()
}
