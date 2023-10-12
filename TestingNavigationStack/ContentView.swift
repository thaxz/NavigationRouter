//
//  ContentView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack {
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
                }
                .listStyle(.insetGrouped)
                .navigationTitle("Menu")
                .navigationDestination(for: Food.self) { food in
                    FoodDetailView(food: food)
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
