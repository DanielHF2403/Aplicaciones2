//
//  ContentView.swift
//  Botones
//
//  Created by DanielHf on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var greeting : String = "Hello world!"
    @State var myForegroundColor : Color = Color.purple
    let colors = [Color.red, Color.blue, Color.black, Color.purple, Color.green]
    
    func changeGreeting(){
        if greeting == "Hola"{
            self.greeting = "Hello world!"
        }else{
            self.greeting = "Hola"
        }
    }
    
    func myRandomColor() -> Color {
        let position = Int.random(in: 0 ... colors.count - 1)
        return colors[position]
    }
    
    var body: some View {
        VStack{
            Text(greeting)
                .foregroundColor(myForegroundColor)
                .padding()
            
            Button(action: {
                self.myForegroundColor = Color.orange
                changeGreeting()
                myForegroundColor = myRandomColor()
            }){
                Text("Saludar")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                    .padding()
                    .background(
                        LinearGradient(gradient: Gradient(
                                        colors:
                                            [Color.purple, Color.blue]),
                                        startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(12)
                    .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
