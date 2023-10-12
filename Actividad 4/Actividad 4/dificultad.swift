//
//  dificultad.swift
//  Actividad 4
//
//  Created by DanielHf on 20/09/23.
//

import SwiftUI

struct dificultad: View {
    
    var dificulty: String
    var color: Color
    var imagen: String
    var ancho: CGFloat
    var alto: CGFloat
    @State var info: Bool = false
    var caracteristicas: String
    
    func changeInfo(){
        self.info = !info
    }
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                
                Spacer()
                
                VStack{
                    Text(dificulty)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    Button(action: {
                        self.changeInfo()
                    }, label: {
                        Text(info ? caracteristicas : " + info ")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("letra"))
                            .background(Color.black)
                            .padding()
                            
                    })
                }
                Spacer()
                
                Image(imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: ancho, height: alto, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            Spacer()
        }
        .background(color)
        .ignoresSafeArea()
    }
}

struct dificultad_Previews: PreviewProvider {
    static var previews: some View {
        dificultad(dificulty: "Dificultad", color: Color.yellow, imagen: "bo", ancho: 100, alto: 100, caracteristicas: "Es fácil")
    }
}


