//
//  ContentView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
                List {
                    Section("Foods"){
                        ForEach(foods) { food in
                            NavigationLink(value: food) {
                                MenuItemRow(item: food)
                            }
                        }
                    }
                    Section("Drinks"){
                        ForEach(drinks) { drink in
                            NavigationLink(value: drink) {
                               MenuItemRow(item: drink)
                            }
                        }
                    }
                    Section("Desserts"){
                        ForEach(desserts) { dessert in
                            NavigationLink(value: dessert) {
                               MenuItemRow(item: dessert)
                            }
                        }
                    }
                }
                .listStyle(.insetGrouped)
                .navigationTitle("Menu")
                .navigationDestination(for: Food.self) { food in
                    FoodDetailView(food: food)
                }
                .navigationDestination(for: Drink.self) { drink in
                   DrinkDetailView(drink: drink)
                }
                .navigationDestination(for: Dessert.self) { dessert in
                   DessertDetailView(dessert: dessert)
                }
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button("Surprise Me") {
                            let items: [any Hashable] = foods + drinks + desserts
                            if let randomItem = items.randomElement(){
                                // triggering the destination pushing to a random item
                                path.append(randomItem)
                            }
                        }
                    }
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
