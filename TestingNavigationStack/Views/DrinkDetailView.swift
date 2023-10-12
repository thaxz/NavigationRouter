//
//  DrinkDetailView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import SwiftUI

struct DrinkDetailView: View {
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
            
        }
        .navigationTitle("Item")
    }
}

struct DrinkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetailView(drink: drinks[0])
    }
}
