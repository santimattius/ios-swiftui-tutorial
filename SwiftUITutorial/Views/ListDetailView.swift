//
//  ListDetailView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer:Programmer
    
    var body: some View {
        VStack{
            programmer.avatar
                .resizable()
                .frame(height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black,lineWidth: 4))
                .shadow(color:Color.gray,radius: 5 )
            Text(programmer.name).font(.largeTitle)
            Text(programmer.lenguages).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(
            id: 1,
            name:"Santiago Mattiauda",
            lenguages:"Kotlin, Swift, Dart",
            avatar:Image(systemName: "person.fill")
        ))
    }
}
