//
//  LocationMapView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    let location: Location
    
    var body: some View {
        Map(coordinateRegion: .constant(.init(center: .init(latitude: location.lat,
                                                            longitude: location.long),
                                              latitudinalMeters: 100,
                                              longitudinalMeters: 100)),
            annotationItems: [location]) { item in
            MapMarker(coordinate: .init(latitude: location.lat,
                                        longitude: location.long))
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .toolbar(.hidden, for: .tabBar)
            .toolbar(.hidden, for: .navigationBar)
            .overlay(alignment: .bottom) {
                HStack {
                    
                    Group {
                        Button("Back to Menu") {
                            // TODO: Handle Menu Navigation
                        }
                        
                        
                        Button("Back to Locations") {
                            // TODO: Handle Menu Navigation
                        }
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    
                }
            }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            LocationMapView(location: foods[2].locations![0])
        }
    }
}
