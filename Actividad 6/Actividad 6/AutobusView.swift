//
//  AutobusView.swift
//  Actividad 6
//
//  Created by DanielHf on 11/10/23.
//

import SwiftUI

struct AutobusView: View {
    
    var name: String
    var color : Color
    
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
    }
}

struct AutobusView_Previews: PreviewProvider {
    static var previews: some View {
        AutobusView(name: "Tren de prueba", color: Color.red)
    }
}
