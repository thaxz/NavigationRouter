//
//  AllergieDetailView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

import SwiftUI

struct AllergiesDetailView: View {
    
    @EnvironmentObject private var routerManager: NavigationRouter
    let allergies: [Allergie]
    
    var body: some View {
        List {
            Section{
                Button("back to root"){
                    routerManager.popToRoot()
                }
            }
            Section {
                ForEach(allergies, id: \.name) { allergy in
                    /*@START_MENU_TOKEN@*/Text(allergy.name)/*@END_MENU_TOKEN@*/
                }
            } footer: {
                Text("This item may contain traces of the following above")
            }
        }
        .navigationTitle("Allergies")
    }
}

struct AllergiesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AllergiesDetailView(allergies: desserts[0].allergies!)
                .environmentObject(NavigationRouter())
        }
    }
}
