//
//  ContentView.swift
//  Actividad 4
//
//  Created by DanielHf on 20/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack{
                Text("¿Qué dificultad elegiras?")
                    .font(.title)
                    .background(Color.black)
                    .foregroundColor(Color.yellow)
                VStack{
                    dificultad(dificulty: "Normal", color : Color.yellow, imagen: "bo", ancho: 120, alto: 120, caracteristicas: "Es fácil")
                    dificultad(dificulty: "True Vault Hunter", color: Color.green, imagen: "bo2", ancho: 150, alto: 150, caracteristicas: "Esta más dificil")
                    dificultad(dificulty: "Ultimate Vault hunter", color: Color.blue, imagen:"bo3", ancho: 65, alto: 65, caracteristicas: "Está mucho más dificil")
                }
            }
            .padding(.vertical, 35)
        }.background(Color.black)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
