//
//  AvionesView.swift
//  Actividad 6
//
//  Created by DanielHf on 11/10/23.
//

import SwiftUI

struct AvionesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(){
            HStack{
                VStack {
                    Image("Aeromexico")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    VStack(alignment: .leading){
                        Text("Aeromexico").font(.title)
                    }
                }.padding(.bottom, 50).padding(.trailing, 50)
                
                VStack {
                    Image("Volaris")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    VStack(alignment: .leading){
                        Text("Volaris").font(.title)
                    }
                }.padding(.bottom, 50).padding(.trailing, 50)
            }
        }
        .navigationTitle("Detalles")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    Button(action: {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "arrow.backward.circle.fill").foregroundColor(.blue)
                                    })
                                )
    }
}

struct AvionesView_Previews: PreviewProvider {
    static var previews: some View {
        AvionesView()
    }
}
