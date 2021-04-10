//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("ic_youtube")
                .resizable()
                .frame(width: 100, height: 100, alignment:  .center)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/,lineWidth: 4))
                .shadow(color:Color.gray, radius: 5)
        }
            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
