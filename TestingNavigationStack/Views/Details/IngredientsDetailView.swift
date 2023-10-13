//
//  IngredientsDetailView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import SwiftUI

struct IngredientsDetailView: View {
    
    let ingredients: [Ingredient]
    
    var body: some View {
        List(ingredients, id: \.name) { ingredient in
            LabeledContent {
                Text(ingredient.quantity / 100, format: .percent)
            } label: {
                Text(ingredient.name)
            }
        }
        .navigationTitle("Ingredients")
    }
}

struct IngredientsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            IngredientsDetailView(ingredients: foods[0].ingredients!)
        }
    }
}
