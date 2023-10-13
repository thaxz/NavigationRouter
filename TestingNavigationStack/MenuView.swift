//
//  MenuView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import SwiftUI

import SwiftUI

struct MenuView: View {
    
    @StateObject private var routeManager = NavigationRouter()
    @StateObject private var cartManager = ShoppingCartManager()
    
    var body: some View {
        NavigationStack(path: $routeManager.routes) {
            List {
                Section("Foods") {
                    ForEach(foods) { food in
                        NavigationLink(value: Route.menuItem(item: food)) {
                            MenuItemRow(item: food)
                        }
                    }
                }
                Section("Drinks") {
                    ForEach(drinks) { drink in
                        NavigationLink(value: Route.menuItem(item: drink)) {
                            MenuItemRow(item: drink)
                        }
                    }
                }
                Section("Desserts") {
                    ForEach(desserts) { dessert in
                        NavigationLink(value: Route.menuItem(item: dessert)) {
                            MenuItemRow(item: dessert)
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    CartButton(count: cartManager.items.count) {
                        
                    }
                }
            }
            .navigationTitle("Menu")
            .navigationDestination(for: Route.self) { route in
                switch route {
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
        .environmentObject(cartManager)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .environmentObject(ShoppingCartManager())
    }
}
