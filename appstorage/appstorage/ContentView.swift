//
//  ContentView.swift
//  appstorage
//
//  Created by DanielHf on 21/11/23.
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
            GuardaView()
                .tabItem(){
                    VStack{
                        Text("2")
                        Image(systemName: "house")
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
