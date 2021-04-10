//
//  RowView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack{
            programmer.avatar
                .resizable()
                .frame(width: 40, height: 40)
            VStack{
                Text(programmer.name)
                Text(programmer.lenguages)
            }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        
        RowView(programmer: Programmer(
            id: 1,
            name:"Santiago Mattiauda",
            lenguages:"Kotlin, Swift, Dart",
            avatar:Image(systemName: "person.fill")
        ))
        
        
    }
}
