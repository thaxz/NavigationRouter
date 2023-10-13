//
//  Dessert.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import Foundation

struct Dessert: MenuItem {
    var id: String { "\(name)_\(title)" }
    let name: String
    let title: String
    let description: String
    let isCold: Bool
    let price: Decimal
    let ingredients: [Ingredient]?
    let allergies: [Allergie]?
    let locations: [Location]?
}

let desserts: [Dessert] = [
    
    Dessert(name: "🍦",
            title: "Ice Cream",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            isCold: true,
            price: 0.99,
            ingredients: [
               Ingredient(name: "Ingredient 1", quantity: 10),
               Ingredient(name: "Ingredient 2", quantity: 5),
               Ingredient(name: "Ingredient 3", quantity: 5)
            ],
            allergies: [
               Allergie(name: "Allergie 1"),
               Allergie(name: "Allergie 2"),
               Allergie(name: "Allergie 3")
            ],
            locations: [
               Location(name: "Location 1",
                        long: -0.1275, lat: 51.507222),
               Location(name: "Location 2",
                        long: -0.1275, lat: 51.507222),
               Location(name: "Location 3",
                        long: -0.1275, lat: 51.507222),
               Location(name: "Location 4",
                        long: -0.1275, lat: 51.507222)
            ]),
    Dessert(name: "🍩",
            title: "Doughnut",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            isCold: false,
            price: 0.99,
            ingredients: [
               Ingredient(name: "Ingredient 1", quantity: 10),
               Ingredient(name: "Ingredient 2", quantity: 5),
               Ingredient(name: "Ingredient 3", quantity: 5)
            ],
            allergies: [
               Allergie(name: "Allergie 1"),
               Allergie(name: "Allergie 2"),
               Allergie(name: "Allergie 3")
            ],
            locations: [
               Location(name: "Location 1",
                        long: -0.1275, lat: 51.507222),
               Location(name: "Location 2",
                        long: -0.1275, lat: 51.507222),
               Location(name: "Location 3",
                        long: -0.1275, lat: 51.507222),
               Location(name: "Location 4",
                        long: -0.1275, lat: 51.507222)
            ])
]
