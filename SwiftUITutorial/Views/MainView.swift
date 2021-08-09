//
//  MainVView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI

struct MainView: View {
    
    @State private var selection: Int?
    
    var body: some View {
        NavigationView{
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: .none){
                NavigationLink(
                    destination: MapView(),
                    tag:1,
                    selection: $selection
                ){
                    Button("MapView"){
                        selection = 1
                    }
                }
                NavigationLink(
                    destination: ImageView(),
                    tag:2,
                    selection: $selection
                ){
                    Button("ImageView"){
                        selection = 2
                    }
                }
                NavigationLink(
                    destination: ContentView(),
                    tag:3,
                    selection: $selection
                ){
                    Button("ContentView"){
                        selection = 3
                    }
                }
                NavigationLink(
                    destination: ListView(),
                    tag:4,
                    selection: $selection
                ){
                    Button("ListView"){
                        selection = 4
                    }
                }
                
                NavigationLink(
                    destination: StateView(),
                    tag:5,
                    selection: $selection
                ){
                    Button("StateView"){
                        selection = 5
                    }
                }
                
            }.navigationTitle("Home")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
