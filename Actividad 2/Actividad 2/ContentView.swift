//
//  ContentView.swift
//  Actividad 2
//
//  Created by DanielHf on 06/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("hello")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .environment(\.locale, .init(identifier: "en"))
            ContentView()
                .environment(\.locale, .init(identifier: "de"))
        }
    }
}
