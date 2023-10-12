//
//  ContentView.swift
//  Actividad 6
//
//  Created by DanielHf on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: AutobusesView(),label:{AutobusView(name: "Autobuses", color: Color.yellow)})
                
                    .padding(.bottom, 100)
                
                NavigationLink(destination: AvionesView(),label:{AutobusView(name: "Aviones", color: Color.red)})
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
