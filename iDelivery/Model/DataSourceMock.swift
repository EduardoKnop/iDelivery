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

let storesMock: [StoreType] = [
    StoreType(
        id: 1,
        name: "Monster Burger",
        logoImage: "monstro-burger-logo",
        headerImage: "monstro-burger-header",
        location: "Main Street, 123, São Paulo, SP",
        stars: 4,
        products: [
            ProductType(id: 1, name: "Classic Burger", description: "Beef hamburger with cheese, lettuce, and tomato", image: "classic_burger", price: 14.99),
            ProductType(id: 2, name: "Bacon Burger", description: "Beef hamburger with cheese, crispy bacon, lettuce, and tomato", image: "bacon_burger", price: 16.99),
            ProductType(id: 3, name: "French Fries", description: "Portion of crispy french fries", image: "fries", price: 5.99),
            ProductType(id: 4, name: "Soda", description: "355ml can of soda", image: "soda", price: 3.99),
            ProductType(id: 5, name: "Vanilla Ice Cream", description: "Cup of vanilla ice cream", image: "vanilla_ice_cream", price: 4.99),
        ]
    ),
    StoreType(
        id: 2,
        name: "Food Court",
        logoImage: "food-court-logo",
        headerImage: "food-court-header",
        location: "Secondary Avenue, 456, São Paulo, SP",
        stars: 4,
        products: [
            ProductType(id: 6, name: "Margherita Pizza", description: "Pizza with tomato sauce, mozzarella cheese, and basil", image: "margherita_pizza", price: 18.99),
            ProductType(id: 7, name: "Pepperoni Pizza", description: "Pizza with tomato sauce, mozzarella cheese, and pepperoni", image: "pepperoni_pizza", price: 19.99),
            ProductType(id: 8, name: "Four Cheeses Pizza", description: "Pizza with mozzarella, provolone, parmesan, and gorgonzola cheese", image: "four_cheeses_pizza", price: 21.99),
            ProductType(id: 9, name: "Lasagna Bolognese", description: "Lasagna with bolognese sauce, cheese, and béchamel", image: "lasagna", price: 22.99),
            ProductType(id: 10, name: "Spaghetti Carbonara", description: "Spaghetti with carbonara sauce", image: "spaghetti_carbonara", price: 20.99)
        ]
    ),
    StoreType(
        id: 3,
        name: "Carbrón",
        logoImage: "carbron-logo",
        headerImage: "carbron-header",
        location: "Third Street, 789, São Paulo, SP",
        stars: 4,
        products: [
            ProductType(id: 11, name: "Picanha", description: "Grilled picanha served with rice, farofa, and vinaigrette", image: "picanha", price: 29.99),
            ProductType(id: 12, name: "Slow-Cooked Ribs", description: "Delicious slow-cooked ribs, served with potatoes", image: "ribs", price: 26.99),
            ProductType(id: 13, name: "Flank Steak", description: "Grilled flank steak served with rice, farofa, and vinaigrette", image: "fraldinha", price: 27.99),
            ProductType(id: 14, name: "Rump Cap", description: "Grilled rump cap served with rice, farofa, and vinaigrette", image: "maminha", price: 28.99),
            ProductType(id: 15, name: "Mixed Grill", description: "Mixed grill with sausage, chicken, and beef, served with rice, farofa, and vinaigrette", image: "mixed_grill", price: 34.99)
        ]
    ),
    StoreType(
        id: 4,
        name: "Bakery",
        logoImage: "bakery-logo",
        headerImage: "bakery-header",
        location: "Fourth Street, 159, São Paulo, SP",
        stars: 3,
        products: [
            ProductType(id: 16, name: "French Bread", description: "Fresh French bread", image: "french_bread", price: 0.50),
            ProductType(id: 17, name: "Croissant", description: "Flaky croissant", image: "croissant", price: 2.99),
            ProductType(id: 18, name: "Sweet Bread Roll", description: "Sweet bread roll with sugar glaze", image: "sweet_bread", price: 3.99),
            ProductType(id: 19, name: "Chocolate Cake Slice", description: "Slice of chocolate cake", image: "chocolate_cake_slice", price: 4.99),
            ProductType(id: 20, name: "Coffee", description: "Hot coffee", image: "coffee", price: 1.99)
        ]
    ),
    StoreType(
        id: 5,
        name: "Açaí Panda",
        logoImage: "acai-panda-logo",
        headerImage: "acai-panda-header",
        location: "Fifth Avenue, 753, São Paulo, SP",
        stars: 4,
        products: [
            ProductType(id: 21, name: "Small Açaí", description: "300ml açaí bowl with granola and banana", image: "small_acai", price: 8.99),
            ProductType(id: 22, name: "Medium Açaí", description: "500ml açaí bowl with granola, banana, and condensed milk", image: "medium_acai", price: 10.99),
            ProductType(id: 23, name: "Large Açaí", description: "700ml açaí bowl with granola, banana, condensed milk, and strawberries", image: "large_acai", price: 13.99),
            ProductType(id: 24, name: "Strawberry Smoothie", description: "Strawberry smoothie made with natural yogurt", image: "strawberry_smoothie", price: 6.99),
            ProductType(id: 25, name: "Banana and Cocoa Smoothie", description: "Banana and cocoa smoothie made with natural yogurt", image: "banana_cocoa_smoothie", price: 6.99)
        ]
    ),
]
