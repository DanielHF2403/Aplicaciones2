//
//  ContentView.swift
//  Trenes
//
//  Created by DanielHf on 18/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var isPressed : Bool = false
    
    private func printHola() -> String{
        if self.isPressed{
            return "Presionado"
        } else {
            return "No presionado"
        }
    }
    
    @State var country: String = " "
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                TextField("A donde quieres viajar?", text: $country).padding(.horizontal)
                
                Text("Viajaras a: \(self.country)").padding(.horizontal)
                
                Text("Is Pressed: \(printHola())")
                
                ScrollView(.horizontal){
                    HStack{
                        MeansOfTransportView(name: "Avion", icon: "car", isPressed: $isPressed)
                        MeansOfTransportView(name: "bus", icon: "car", isPressed: $isPressed)
                        MeansOfTransportView(name: "carro", icon: "car", isPressed: $isPressed)
                        MeansOfTransportView(name: "barco", icon: "car", isPressed: $isPressed)
                    }
                }
                
                ScrollView(){
                    VStack(){
                        TraincardView(name: "Autobuses", color: Color.yellow)
                        TraincardView(name: "Aviones", color: Color.green)
                    }
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
