//
//  SearchBarView.swift
//  listas
//
//  Created by DanielHf on 16/10/23.
//

import SwiftUI

struct SearchBarView: View {
    
        @Binding var gameName : String

        var body: some View {

            HStack(){
                TextField("Buscar nombre juego", text: $gameName)
                .disableAutocorrection(true)
                .foregroundColor(.black)
                .padding(.all, 2)
                Image(systemName: "magnifyingglass.circle.fill")
                .font(.title3)
                .foregroundColor(Color.gray)
            }
            
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.blue,lineWidth: 1)).padding()

    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(gameName: .constant(""))
    }
}
