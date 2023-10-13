//
//  MenuItem.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import Foundation

protocol MenuItem: Identifiable, Hashable {
    var id: String { get }
    var name: String { get }
    var title: String { get }
    var description: String { get }
    var price: Decimal { get }
    var ingredients: [Ingredient]? { get }
    var allergies: [Allergie]? { get }
    var locations: [Location]? { get }
}

struct Ingredient: Hashable {
    let name: String
    let quantity: Double
}

struct Allergie: Hashable {
    let name: String
}

struct Location: Identifiable, Hashable {
    var id: String { name }
    let name: String
    let long: Double
    let lat: Double
}
