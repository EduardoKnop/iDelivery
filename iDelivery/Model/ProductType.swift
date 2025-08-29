//
//  ProductType.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "$ " + price.formatPrice()
    }
}
