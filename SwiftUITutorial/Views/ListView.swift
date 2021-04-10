//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI



struct ListView: View {
    var body: some View {
        NavigationView{
            List(programmers, id:\.id){ programmer in
                NavigationLink(destination:ListDetailView(programmer:programmer)){
                    RowView(programmer:programmer)
                }
            }
            .navigationTitle("Programmers")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
