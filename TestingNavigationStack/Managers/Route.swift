//
//  Route.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import Foundation
import SwiftUI

enum Route {
    
    // Navigation cases
    /// Put every screen here and if needs an objects, pass it ike this case yourItem(item: MyItem)
    case menuItem(item: any MenuItem)
    case cart
    case ingredients(item: [Ingredient])
    case allergies(item: [Allergie])
    case locations(places: [Location])
    case map(location: Location)
}

// MARK: Separating View Builders

extension Route: View {
    // Building Views according to switch self
    var body: some View {
        switch self {
        case .menuItem(let item):
            // switching according to item type
            switch item {
            case is Food:
                FoodDetailView(food: item as! Food)
            case is Drink:
                DrinkDetailView(drink: item as! Drink)
            case is Dessert:
                DessertDetailView(dessert: item as! Dessert)
            default:
                EmptyView()
            }
        case .cart:
            CartView()
        case .ingredients(let items):
            IngredientsDetailView(ingredients: items)
        case .allergies(let items):
            AllergiesDetailView(allergies: items)
        case .locations(let places):
            LocationsDetailView(locations: places)
        case .map(let location):
            LocationMapView(location: location)
        }
    }
}

// MARK: Separating hashable protocol

extension Route: Hashable {
    
    // conforming to hashable protocol
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }
    
    // conforming to equatable protocol
    static func == (lhs: Route, rhs: Route) -> Bool {
        switch (lhs, rhs){
        case (.menuItem(let lshItem), .menuItem(let rhsItem)):
            return lshItem.id == rhsItem.id
        case (.cart, .cart):
            return true
        case (.ingredients(let lshItem), .ingredients(let rhsItem)):
            return lshItem == rhsItem
        case (.allergies(let lshItem), .allergies(let rhsItem)):
            return lshItem == rhsItem
        case (.locations(let lshItem), .locations(let rhsItem)):
            return lshItem == rhsItem
        case (.map(let lshItem), .map(let rhsItem)):
            return lshItem.id == rhsItem.id
        default:
            return false
        }
    }

}
