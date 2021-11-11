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
            List{
                NavigationLink(
                    destination: MapView()
                        .navigationBarTitle("")
                        .navigationBarTitleDisplayMode(.inline),
                    tag:1,
                    selection: $selection
                ){
                    Button("Using MapView from MapKit"){
                        selection = 1
                    }
                }
                NavigationLink(
                    destination: ImageView(),
                    tag:2,
                    selection: $selection
                ){
                    Button("Load image from assets"){
                        selection = 2
                    }
                }
                NavigationLink(
                    destination: ContentView(),
                    tag:3,
                    selection: $selection
                ){
                    Button("Example using VStack"){
                        selection = 3
                    }
                }
                NavigationLink(
                    destination: ListView(),
                    tag:4,
                    selection: $selection
                ){
                    Button("List with interactions"){
                        selection = 4
                    }
                }
                
                NavigationLink(
                    destination: StateView(),
                    tag:5,
                    selection: $selection
                ){
                    Button("Example using states"){
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
