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
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(store.headerImage)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Text(store.name)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    Image(store.logoImage)
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                HStack {
                    Text(store.location)
                    
                    Spacer()
                    
                    ForEach(1...store.stars, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .font(.caption)
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                Text("Products")
                    .font(.title2)
                    .bold()
                    .padding()
                
                ForEach(store.products) { product in
                    ProductItemView(product: product)
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
