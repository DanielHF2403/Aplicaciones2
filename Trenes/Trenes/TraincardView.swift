//
//  TraincardView.swift
//  Trenes
//
//  Created by DanielHf on 18/09/23.
//

import SwiftUI

struct TraincardView: View {
    
    var name: String
    var color : Color
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("Oferta")
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(2)
                    .frame( maxWidth: .infinity, alignment: .trailing)
            }
            
            Image(systemName: "tram.circle.fill")
            .font(.system(size: 90, weight: .light, design: .default))
            .foregroundColor(color)
            .aspectRatio(contentMode: .fit )
            .frame(width: 120, height: 100)

            Text(name)
            .font(.largeTitle)
            .lineLimit(1)
            .truncationMode(.middle)
            .padding(.bottom)
            .frame( maxWidth: .infinity)

        }
        .onTapGesture {
            withAnimation(){
                showAlert.toggle()
            }
        }
        .alert(isPresented: $showAlert) {
                    Alert(title: Text("Cuidado"), message: Text("Seleccionaste tren \(name) "), dismissButton: .default(Text(" Ok")))
                }
        .modifier(ContentViewModifier())
        
       
    }
}

struct TraincardView_Previews: PreviewProvider {
    static var previews: some View {
        TraincardView(name: "Tren de prueba", color: Color.red)
    }
}
