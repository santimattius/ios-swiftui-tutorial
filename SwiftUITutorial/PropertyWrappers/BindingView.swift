//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 8/6/21.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    @ObservedObject var user:UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack{
            Text("El valor actual es \(value)")
            Button("Sumar 2"){
              value += 2
            }
            Button("Actualizar datos"){
                user.name = "Santiago Mattiuda"
                user.age = 21
            }
            NavigationLink(
                destination: EnviromentView(),
                tag:1,
                selection: $selection
            ){
                Button("Ir a EnviromentView"){
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(0), user:  UserData())
    }
}
