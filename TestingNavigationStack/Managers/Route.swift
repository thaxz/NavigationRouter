//
//  Route.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import Foundation

enum Route: Hashable {
    // to pass the required item when navigating
    case menuItem(item: any MenuItem)
    
    // conforming to protocols
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }
    
    // conforming to protocols
    static func == (lhs: Route, rhs: Route) -> Bool {
        switch (lhs, rhs){
        case (.menuItem(let lshItem), .menuItem(let rhsItem)):
            return lshItem.id == rhsItem.id
        }
    }
    
}
