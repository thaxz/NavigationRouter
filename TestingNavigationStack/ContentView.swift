//
//  ContentView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                List {
                    ForEach(foods) { food in
                        
                        NavigationLink {
                           // FoodDetailView(food: food)
                        } label: {
                          //  FoodItemView(food: food)
                        }
                    }
                }
                .listStyle(.insetGrouped)
                .navigationTitle("Menu")
                
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
