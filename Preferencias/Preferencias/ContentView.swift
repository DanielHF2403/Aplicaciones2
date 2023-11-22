//
//  ContentView.swift
//  Preferencias
//
//  Created by DanielHf on 06/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
            WelcomeView()
                .tabItem(){
                    VStack{
                        Text("Inicio")
                        Image(systemName: "house")
                    }
                }
            TimerView()
                .tabItem(){
                    VStack{
                        Text("2")
                        Image(systemName: "timer")
                    }
                }
            
        }
        .accentColor(Color.orange)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
