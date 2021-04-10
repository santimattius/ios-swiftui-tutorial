//
//  MainVView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView().frame(height:400)
                ImageView()
                ContentView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
