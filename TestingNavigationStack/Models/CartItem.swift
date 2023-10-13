//
//  CartItem.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import Foundation

struct CartItem: Identifiable, Hashable {
    
    let id: String
    let title: String
    let name: String
    let price: Decimal
    
    init(_ item: any MenuItem) {
        self.id = "\(item.name)_\(item.title)"
        self.title = item.title
        self.name = item.name
        self.price = item.price
    }
}
