//
//  StoresContainerView.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Stores"
    @State private var ratingFilter = 0
    private var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Filter") {
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Clear Filter")
                    }
                    
                    Divider()

                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            if rating < 5 {
                                Text("\(rating)+ Stars")
                            } else {
                                Text("\(rating) Stars")
                            }
                        }

                    }
                }
                .foregroundStyle(.black)
            }
            
            LazyVStack(alignment: .leading, spacing: 20) {
                if filteredStores.isEmpty {
                    Text("No results found :(")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.colorRed)
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { store in
                        NavigationLink {
                            StoreDetailView(store: store)
                        } label: {
                            StoreItemView(store: store)
                        }
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
