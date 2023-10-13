//
//  MenuView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import SwiftUI

import SwiftUI

struct MenuView: View {
    
    @State private var path: NavigationPath = NavigationPath()
    @StateObject private var cartManager = ShoppingCartManager()
    
    var body: some View {
        
        NavigationStack(path: $path) {
            
            List {
                
                Section("Foods") {
                    ForEach(foods) { food in
                        
                        NavigationLink(value: food) {
                            MenuItemRow(item: food)
                        }
                    }
                }
                
                Section("Drinks") {
                    ForEach(drinks) { drink in
                        
                        NavigationLink(value: drink) {
                            MenuItemRow(item: drink)
                        }
                    }
                }
                
                Section("Desserts") {
                    ForEach(desserts) { dessert in
                        
                        NavigationLink(value: dessert) {
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
            .navigationDestination(for: Food.self) { item in
                FoodDetailView(food: item)
            }
            .navigationDestination(for: Drink.self) { item in
                DrinkDetailView(drink: item)
            }
            .navigationDestination(for: Dessert.self) { item in
                DessertDetailView(dessert: item)
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
