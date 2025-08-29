//
//  CarouselTabView.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import SwiftUI

struct CarouselTabView: View {
    var body: some View {
        TabView {
            ForEach(carouselMock) { order in
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
