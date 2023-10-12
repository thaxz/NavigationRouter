//
//  FoodItemView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import SwiftUI

struct MenuItemRow: View {    
    let item: MenuItem
    var body: some View {
        LabeledContent {
            Text(item.price,
                 format: .currency(code: Locale.current.currency?.identifier ?? ""))
        } label: {
            Text("\(item.name) \(item.title)")
        }
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemRow(item: foods[0])
            .previewLayout(.sizeThatFits)
    }
}
