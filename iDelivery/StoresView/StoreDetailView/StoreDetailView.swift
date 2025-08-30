//
//  StoreDetailView.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import SwiftUI

struct StoreDetailView: View {
    let store: StoreType
    @Environment(\.dismiss) var dismiss
    @State private var selectedProduct: ProductType?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                StoreDetailHeaderView(store: store)
                
                Text("Products")
                    .font(.title2)
                    .bold()
                    .padding()
                
                ForEach(store.products) { product in
                    Button {
                        selectedProduct = product
                    } label: {
                        ProductItemView(product: product)
                    }
                    .sheet(item: $selectedProduct) { product in
                        ProductDetailView(product: product)
                    }
                }
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "cart")
                            
                            Text("Stores")
                        }
                        .foregroundStyle(Color.colorRed)
                    }
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
