//
//  ProductDetailView.swift
//  iDelivery
//
//  Created by Eduardo Knop on 30/08/25.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductType
    @State private var productQuantity = 1
    
    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            Spacer()
            ProductQuantityView(productQuantity: $productQuantity)
            Spacer()
            
            Button {
                print("Button pressed")
            } label: {
                AddCartButton()
            }
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
