//
//  StoreType.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
