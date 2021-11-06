//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI



struct ListView: View {
    
    @StateObject private var programmerModelData = ProgrammersModelData()
    @State private var showFavorite = false
    
    private var filteredProgrammers:[Programmer]{ return programmerModelData.programmers.filter{
        programmer  in
            return !showFavorite || programmer.favorite
        }
    }
    
    var body: some View {
        VStack{
            
            Toggle(isOn: $showFavorite, label: {
                Text("Mostrar favoritos")
            }).padding()
            
            List(filteredProgrammers, id:\.id){ programmer in
                NavigationLink(
                    destination:ListDetailView(programmer:programmer,
                                               favorite:
                                            $programmerModelData
                                            .programmers[programmer.id].favorite)
                ){
                    RowView(programmer:programmer)
                }
            }
            
        }
        .navigationBarTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
