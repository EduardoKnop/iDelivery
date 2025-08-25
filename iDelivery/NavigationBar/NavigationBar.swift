//
//  NavigationBar.swift
//  iDelivery
//
//  Created by Eduardo Knop on 25/08/25.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Button("XXX, Street") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            
            Spacer()
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBar()
        .padding()
}
