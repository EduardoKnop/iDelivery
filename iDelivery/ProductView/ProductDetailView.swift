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
            VStack(alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                
                Text(product.description)
                    .padding(.horizontal)
                
                Text(product.formattedPrice)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
            }
            
            Spacer()
            
            VStack(spacing: 16) {
                Text("Quantity")
                    .font(.title3)
                    .bold()
                
                HStack {
                    Button {
                        if productQuantity > 1 {
                            productQuantity -= 1
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title)
                            .bold()
                    }
                    
                    Text("\(productQuantity)")
                        .font(.title2)
                        .bold()
                    
                    Button {
                        if productQuantity < 99 {
                            productQuantity += 1
                        }
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .bold()
                    }
                }
            }
            
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
