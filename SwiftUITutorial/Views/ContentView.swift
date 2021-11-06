//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TextView(text: "Stacked Text 1")
            TextView(text: "Stacked Text 2")
            TextView(text: "Stacked Text 3")
            TextView(text: "Stacked Text 4")
            TextView(text: "Stacked Text 5")
            TextView(text: "Stacked Text  5")
            TextView(text: "Stacked Text  6")
            TextView(text: "Stacked Text  7")
            Spacer()
        }.navigationBarTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: View {
    var text:String
    var body: some View {
        Text(text)
            .font(.title)
            .multilineTextAlignment(.leading)
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0
            )
            .padding()
    }
}
