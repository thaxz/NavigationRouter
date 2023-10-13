//
//  AllergieDetailView.swift
//  TestingNavigationStack
//
//  Created by thaxz on 13/10/23.
//

struct AllergiesDetailView: View {
    
    let allergies: [Allergie]
    
    var body: some View {
        List {

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
        }
    }
}
