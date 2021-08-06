//
//  EnviromentView.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 8/6/21.
//

import SwiftUI

struct EnviromentView: View {
    
    @EnvironmentObject var user:UserData
    
    var body: some View {
        Text(user.name)
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentView().environmentObject(UserData())
    }
}
