//
//  LocationsDetailView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import SwiftUI

struct LocationsDetailView: View {
    
    let locations: [Location]
    
    var body: some View {
        List {
            ForEach(locations, id: \.name) { location in
                Text(location.name)
            }
        }
        .navigationTitle("Locations")
    }
}

struct LocationsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            LocationsDetailView(locations: foods[0].locations!)
        }
    }
}
