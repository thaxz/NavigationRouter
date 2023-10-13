//
//  Route.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import Foundation
import SwiftUI

enum Route: View, Hashable {
    
    // to pass the required item when navigating
    case menuItem(item: any MenuItem)
    
    // conforming to protocols
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }
    
    // conforming to protocols
    static func == (lhs: Route, rhs: Route) -> Bool {
        switch (lhs, rhs){
        case (.menuItem(let lshItem), .menuItem(let rhsItem)):
            return lshItem.id == rhsItem.id
        }
    }
    
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
        }
    }
    
}
