//
//  CarouselItemView.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import SwiftUI

struct CarouselItemView: View {
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
        .padding()
}
