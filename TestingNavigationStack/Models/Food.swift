//
//  Food.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import Foundation

struct Food: MenuItem {
    var id: String { "\(name)_\(title)" }
    let name: String
    let title: String
    let description: String
    let price: Decimal
    let ingredients: [Ingredient]?
    let allergies: [Allergie]?
    let locations: [Location]?
}

let foods: [Food] = [
    Food(name: "🌯",
         title: "Burrito",
         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
         price: 7.99,
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
    Food(name: "🍜",
         title: "Ramen",
         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
         price: 10.99,
         ingredients: [
            Ingredient(name: "Ingredient 2", quantity: 20),
            Ingredient(name: "Ingredient 3", quantity: 11),
            Ingredient(name: "Ingredient 4", quantity: 15)
         ],
         allergies: nil,
         locations: [
            Location(name: "Location 1",
                     long: -0.1275, lat: 51.507222),
            Location(name: "Location 2",
                     long: -0.1275, lat: 51.507222),
            Location(name: "Location 3",
                     long: -0.1275, lat: 51.507222)
         ]),
    Food(name: "🍔",
         title: "Burger",
         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
         price: 4.99,
         ingredients: [
            Ingredient(name: "Ingredient 1", quantity: 10),
            Ingredient(name: "Ingredient 2", quantity: 5),
            Ingredient(name: "Ingredient 3", quantity: 5)
         ],
         allergies: nil,
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
    Food(name: "🍕",
         title: "Pizza",
         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
         price: 1.99,
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
    Food(name: "🌭",
         title: "Hotdog",
         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
         price: 0.99,
         ingredients: [
            Ingredient(name: "Ingredient 1", quantity: 10),
            Ingredient(name: "Ingredient 2", quantity: 5),
            Ingredient(name: "Ingredient 3", quantity: 5)
         ],
         allergies: nil,
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
    Food(name: "🧆",
         title: "Falafel",
         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
         price: 2.99,
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
    Food(name: "🍝",
         title: "Spag Bol",
         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
         price: 12.99,
         ingredients: [
            Ingredient(name: "Ingredient 1", quantity: 10),
            Ingredient(name: "Ingredient 2", quantity: 5),
            Ingredient(name: "Ingredient 3", quantity: 5)
         ],
         allergies: nil,
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
