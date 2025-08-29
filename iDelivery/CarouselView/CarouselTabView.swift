//
//  CarouselTabView.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import SwiftUI

struct CarouselTabView: View {
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "Barbecue", image: "barbecue-banner"),
        OrderType(id: 2, name: "Brazilian", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "Pokes", image: "pokes-banner"),
    ]
    
    var body: some View {
        TabView {
            ForEach(ordersMock) { order in
                CarouselItemView(order: order)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}
