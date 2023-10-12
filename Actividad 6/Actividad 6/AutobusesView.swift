//
//  AutobusesView.swift
//  Actividad 6
//
//  Created by DanielHf on 11/10/23.
//

import SwiftUI

struct AutobusesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(){
            HStack{
                VStack {
                    Image("Omnibus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    VStack(alignment: .leading){
                        Text("Omnibus de mexico").font(.title)
                    }
                }.padding(.bottom, 50).padding(.trailing, 50)
                
                VStack {
                    Image("ADO")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    VStack(alignment: .leading){
                        Text("ADO").font(.title)
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

struct AutobusesView_Previews: PreviewProvider {
    static var previews: some View {
        AutobusesView()
    }
}
