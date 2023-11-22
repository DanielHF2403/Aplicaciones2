//
//  apiApp.swift
//  api
//
//  Created by DanielHf on 22/11/23.
//

import SwiftUI

@main
struct apiApp: App {
    var sharedViewModel = PokemonListViewModel()
        var body: some Scene {
            WindowGroup {
                ContentView().environmentObject(sharedViewModel)
        }
    }
}
