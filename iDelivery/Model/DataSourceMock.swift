//
//  DataSourceMock.swift
//  iDelivery
//
//  Created by Eduardo Knop on 29/08/25.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurant", image: "hamburger"),
    OrderType(id: 2, name: "Market", image: "market"),
    OrderType(id: 3, name: "Drugstore", image: "drugstore"),
    OrderType(id: 4, name: "Pet", image: "petshop"),
    OrderType(id: 5, name: "Offers", image: "offers"),
    OrderType(id: 6, name: "Beverages", image: "beverages"),
    OrderType(id: 7, name: "Gourmet", image: "gourmet"),
]

let carouselMock: [OrderType] = [
    OrderType(id: 1, name: "Barbecue", image: "barbecue-banner"),
    OrderType(id: 2, name: "Brazilian", image: "brazilian-meal-banner"),
    OrderType(id: 3, name: "Pokes", image: "pokes-banner"),
]

let storesMock: [OrderType] = [
    OrderType(id: 1, name: "Monstro Burger", image: "monstro-burger-logo"),
    OrderType(id: 2, name: "Food Court", image: "food-court-logo"),
    OrderType(id: 3, name: "Carbrón", image: "carbron-logo"),
    OrderType(id: 4, name: "Bakery Store", image: "bakery-logo"),
    OrderType(id: 5, name: "Açaí Panda", image: "acai-panda-logo"),
]
