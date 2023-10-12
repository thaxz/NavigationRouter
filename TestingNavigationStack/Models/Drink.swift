//
//  Drink.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import Foundation

struct Drink: Identifiable, Hashable {
    
    var id: String {
        return "\(name)_\(title)"
    }
    let name: String
    let title: String
    let description: String
    let isFizzy: Bool
    let price: Decimal
}

let drinks: [Drink] = [
    Drink(name: "🥤",
          title: "Soda",
          description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          isFizzy: true,
          price: 2.99),
    Drink(name: "🧋",
          title: "Boba Tea",
          description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          isFizzy: false,
          price: 3.99),
    Drink(name: "🧃",
          title: "Juice",
          description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          isFizzy: false,
          price: 0.99)
]
