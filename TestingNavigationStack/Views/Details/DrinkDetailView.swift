//
//  DrinkDetailView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import SwiftUI

struct DrinkDetailView: View {
    
    @EnvironmentObject private var cartManager: ShoppingCartManager
    @EnvironmentObject private var routerManager: NavigationRouter
    
    let drink: Drink
    
    var body: some View {
        List {
            Section {
                LabeledContent("Icon", value: drink.name)
                LabeledContent("Name", value: drink.title)
                LabeledContent {
                    Text(drink.price,
                         format: .currency(code: Locale.current.currency?.identifier ?? ""))
                } label: {
                    Text("Price")
                }
                LabeledContent("Fizzy?", value: drink.isFizzy ? "✅" : "❌")
            }
            Section("Description") {
                Text(drink.description)
            }
            
            if drink.allergies?.isEmpty == false ||
                drink.ingredients?.isEmpty == false {
                Section("Dietry") {
                    if let ingredients = drink.ingredients {
                        NavigationLink(value: Route.ingredients(item: ingredients)) {
                            let countVw = Text("x\(ingredients.count)").font(.footnote).bold()
                            Text("\(countVw) Ingredients")
                        }
                        
                    }
                    if let allergies = drink.allergies{
                        NavigationLink(value: Route.allergies(item: allergies)) {
                            let countVw = Text("x\(allergies.count)").font(.footnote).bold()
                            Text("\(countVw) Allergies")
                        }
                    }
                }
            }
            if drink.locations?.isEmpty == false {
                
                Section("Locations") {
                    
                    if let locationsCount = drink.locations?.count {
                        let countVw = Text("x\(locationsCount)").font(.footnote).bold()
                        Text("\(countVw) Locations")
                    }
                }
            }
            Section {
                Button {
                    cartManager.add(drink)
                    routerManager.reset()
                } label: {
                    Label("Add to cart", systemImage: "cart")
                        .symbolVariant(.fill)
                }
            }

        }
        .navigationTitle(drink.title)
    }
}

struct DrinkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DrinkDetailView(drink: drinks[0])
                .environmentObject(ShoppingCartManager())
                .environmentObject(NavigationRouter())
        }
    }
}
