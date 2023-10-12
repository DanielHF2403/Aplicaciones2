//
//  DulcesView.swift
//  Actividad 7
//
//  Created by DanielHf on 06/10/23.
//

import SwiftUI

struct DulcesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(){
            HStack{
                VStack {
                    Image("Corneto")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    VStack(alignment: .leading){
                        Text("Corneto").font(.title)
                        Text("$30.00").fontWeight(.semibold).font(.body)
                    }
                }.padding(.bottom, 50).padding(.trailing, 50)
                
                VStack {
                    Image("Mordisko")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 120)
                    VStack(alignment: .leading){
                        Text("Mordisko").font(.title)
                        Text("$25.00").fontWeight(.semibold).font(.body)
                    }
                }.padding(.bottom, 50).padding(.leading, 50)
            }
            
            HStack{
                VStack {
                    Image("M&M")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 120)
                    VStack(alignment: .leading){
                        Text("M&M").font(.title)
                        Text("$30.00").fontWeight(.semibold).font(.body)
                    }
                }.padding(.bottom, 50).padding(.trailing, 50)
                
                VStack {
                    Image("Panditas")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 120)
                    VStack(alignment: .leading){
                        Text("Panditas").font(.title)
                        Text("$20.00").fontWeight(.semibold).font(.body)
                    }
                }.padding(.bottom, 50).padding(.leading, 50)
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

struct DulcesView_Previews: PreviewProvider {
    static var previews: some View {
        DulcesView()
    }
}
