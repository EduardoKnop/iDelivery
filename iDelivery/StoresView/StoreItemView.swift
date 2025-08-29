//
//  StoreItemView.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import SwiftUI

struct StoreItemView: View {
    let item: OrderType
    
    var body: some View {
        HStack {
            Image(item.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            Text(item.name)
                .font(.subheadline)
            
            Spacer()
        }
        .onTapGesture {
            print("Clicked in \(item.name)")
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreItemView(item: OrderType(id: 1, name: "Monstro Burger", image: "monstro-burger-logo"))
        .padding()
}
