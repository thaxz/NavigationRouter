//
//  MenuItem.swift
//  TestingNavigationStack
//
//  Created by thaxz on 12/10/23.
//

import Foundation

protocol MenuItem {
    
    var name: String {get}
    var title: String {get}
    var description: String {get}
    var price: Decimal {get}
}
