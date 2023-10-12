//
//  ContentView.swift
//  Imagenes
//
//  Created by DanielHf on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.purple)
                Text("Hello World!")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    Rectangle()
                        .foregroundColor(.blue)
                        .opacity(0.3)
            
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
