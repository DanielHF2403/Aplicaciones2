//
//  GuardaView.swift
//  appstorage
//
//  Created by DanielHf on 21/11/23.
//

import SwiftUI

struct GuardaView: View {
    @AppStorage("myName") var myName: String = ""
    @AppStorage("myAge") var myAge: String = ""
    @AppStorage("mySize") var mySize: String = ""
    @AppStorage("myWeight") var myWeight: String = ""
    @AppStorage("mySong") var mySong: String = ""
    
    @State var name: String = ""
    @State var edad: String = ""
    @State var estatura: String = ""
    @State var peso: String = ""
    @State var song: String = ""
    
    
    var body: some View {
        
        VStack{
            
            TextField("Nombre: ", text: $name)
            TextField("Edad: ", text: $edad)
            TextField("Estatura: ", text: $estatura)
            TextField("peso: ", text: $peso)
            TextField("canción: ", text: $song)
            
            Button(action: {
                myName = name
                myAge = edad
                mySize = estatura
                myWeight = peso
                mySong = song
            }){
                Text("Guardar")
            }
            
            
        }
    }
}

struct GuardaView_Previews: PreviewProvider {
    static var previews: some View {
        GuardaView()
    }
}
