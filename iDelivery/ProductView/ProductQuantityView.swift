//
//  ProductQuantityView.swift
//  iDelivery
//
//  Created by Eduardo Knop on 30/08/25.
//

import SwiftUI

struct ProductQuantityView: View {
    @Binding var productQuantity: Int
    
    var body: some View {
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
    }
}

#Preview {
    ProductQuantityView(productQuantity: .constant(1))
}
