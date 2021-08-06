//
//  Repository.swift
//  SwiftUITutorial
//
//  Created by Santiago Mattiauda on 4/6/21.
//

import Foundation
import SwiftUI

final class ProgrammersModelData:ObservableObject{
    @Published var programmers = [
        Programmer(
            id: 0,
            name:"Santiago Mattiauda",
            lenguages:"Kotlin, Swift, Dart",
            avatar:Image(systemName: "person.fill"),
            favorite: true
        ),
        Programmer(
            id: 1,
            name:"Santiago Mattiauda",
            lenguages:"Kotlin, Swift, Dart",
            avatar:Image(systemName: "person.fill"),
            favorite: false
        ),
        Programmer(
            id: 2,
            name:"Santiago Mattiauda",
            lenguages:"Kotlin, Swift, Dart",
            avatar:Image(systemName: "person.fill"),
            favorite: true
        ),
        Programmer(
            id: 3,
            name:"Santiago Mattiauda",
            lenguages:"Kotlin, Swift, Dart",
            avatar:Image(systemName: "person.fill"),
            favorite: false
        ),
        Programmer(
            id: 4,
            name:"Santiago Mattiauda",
            lenguages:"Kotlin, Swift, Dart",
            avatar:Image(systemName: "person.fill"),
            favorite: false
        )
    ]
}

