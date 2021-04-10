//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            Text("Text 1")
                .font(.title)
                .foregroundColor(Color.red)
                .padding()
            
            Text("Text 2")
                .font(.title)
                .foregroundColor(Color.red)
                .padding()
            Text("Text 3")
                .font(.title)
                .foregroundColor(Color.red)
                .padding()
        }
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
