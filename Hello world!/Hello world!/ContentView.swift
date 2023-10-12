//
//  ContentView.swift
//  HolaMundo
//
//  Created by Alumnos on 29/08/23.
//

import SwiftUI

struct ContentView: View {
    
    var greeting : String = "Hello world!"
    let fondo: Color = Color("fondo")
    let radius: CGFloat = 15
    
    var body: some View {
       
        VStack(alignment: .trailing) {
            Spacer()
            
            Text(greeting).font(.title)
            Text(greeting)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(Color.white)
                .background(fondo)
                .padding([.horizontal, .bottom], 8)
                .background(Color.red)
                .lineLimit(2)
                .truncationMode(.tail)
                .cornerRadius(radius)
                .shadow(color: Color.black, radius: 25)
            .padding()
            
           
            Spacer()
        }
        
       
        //.foregroundColor(Color("fondo"))
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
