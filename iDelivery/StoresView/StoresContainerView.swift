//
//  StoresContainerView.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Stores"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            LazyVStack(alignment: .leading, spacing: 20) {
                ForEach(storesMock) { store in
                    NavigationLink {
                        StoreDetailView(store: store)
                    } label: {
                        StoreItemView(item: store)
                    }
                }
            }
        }
        .foregroundStyle(Color.black)
        .padding(20)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoresContainerView()
}
