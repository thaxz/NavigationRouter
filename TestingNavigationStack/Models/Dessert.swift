//
//  Dessert.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import Foundation

struct Dessert: Identifiable, Hashable, MenuItem {
    var id: String { "\(name)_\(title)" }
    let name: String
    let title: String
    let description: String
    let isCold: Bool
    let price: Decimal
}

let desserts: [Dessert] = [
    
    Dessert(name: "🍦",
            title: "Ice Cream",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            isCold: true,
            price: 0.99),
    Dessert(name: "🍩",
            title: "Doughnut",
            description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            isCold: false,
            price: 0.99)
]
