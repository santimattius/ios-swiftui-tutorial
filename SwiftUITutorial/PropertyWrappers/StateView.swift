//
//  StateView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 8/6/21.
//

import SwiftUI

class UserData:ObservableObject {
    @Published var name = "Santiago"
    @Published var age = 28
}

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        VStack{
            Spacer()
            Text("El valor es \(value)")
            Button("Sumar 1"){
                value += 1
            }
            Text("El valor actual es \(user.name)")
            Text("Mi edad es \(user.age)")
            Button("Actualizar datos"){
                user.name = "Santiago Mattiuda"
                user.age = 40
            }
            Spacer()
            NavigationLink(
                destination: BindingView(value: $value, user: user),
                tag:1,
                selection: $selection
            ){
                Button("Ir a BindingView"){
                    selection = 1
                }
            }
        }.padding()
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
