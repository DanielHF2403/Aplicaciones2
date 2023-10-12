//
//  ContentView.swift
//  HolaMundo
//
//  Created by Alumnos on 29/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack{
            
            VStack{
                Image("border3")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            }.ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack{
                    
                    Spacer()
                    
                    ZStack{
                        VStack{
                            Image(systemName:"globe")
                                
                            Text("Amarillo")
                                .font(.title)
                                .foregroundColor(Color.green)
                        }
                    }
                    
                    ZStack{
                        VStack{
                            Image(systemName: "globe")
                            
                            Text("Azul")
                                .font(.title)
                                .foregroundColor(Color.red)
                        }
                    }
                    
                    ZStack{
                        VStack{
                            Image(systemName: "globe")
                            
                            Text("Naranja")
                                .font(.title)
                                .foregroundColor(Color.blue)
                        }
                    }
                    
                    
                    Spacer()
                    
                }
                
                HStack{
                    
                    Spacer()
                    
                    Text("Negro")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color("b_Blue"))
                        .cornerRadius(15)
                        .shadow(color: Color.black, radius: 25)
                    .padding()
                    
                    Image("border3")
                        .resizable()
                        .frame(width: 75, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("Rojo")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(Color.red)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .shadow(color: Color.black, radius: 25)
                    .padding()
                    
                    Spacer()
                    
                }
                
                HStack{
                    
                    Spacer()
                    
                    Text("Verde")
                        .frame(width: 300)
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(15)
                        
                    Spacer()
                }
                
                HStack{
                    Text("Morado")
                        .padding(.horizontal, 50)
                    
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    
                    Text("Naranja")
                        .font(.title)
                        .underline()
                        .padding(.horizontal, 30)
                    
                }
                
                
            }
            
            
        }
        
        
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .light)
    }
}
