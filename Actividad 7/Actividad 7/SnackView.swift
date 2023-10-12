//
//  SnackView.swift
//  Actividad 7
//
//  Created by DanielHf on 06/10/23.
//

import SwiftUI

struct SnackView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(){
            HStack{
                VStack {
                    Image("Nachos")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                    VStack(alignment: .leading){
                        Text("Nachos").font(.title)
                        Text("$80.00").fontWeight(.semibold).font(.body)
                    }
                }.padding(.bottom, 50).padding(.trailing, 50)
                
                VStack {
                    Image("Takis")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 120)
                    VStack(alignment: .leading){
                        Text("Palomitas").font(.title)
                        Text("$75.00").fontWeight(.semibold).font(.body)
                    }
                }.padding(.bottom, 50).padding(.leading, 50)
            }
            
            /*HStack{
                VStack {
                    Image("Ciel")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 120)
                    VStack(alignment: .leading){
                        Text("Agua").font(.title)
                        Text("$30.00").fontWeight(.semibold).font(.body)
                    }
                }.padding(.bottom, 50).padding(.trailing, 50)
                
                VStack {
                    Image("Frappe")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 120)
                    VStack(alignment: .leading){
                        Text("Frappe").font(.title)
                        Text("$60.00").fontWeight(.semibold).font(.body)
                    }
                }.padding(.bottom, 50).padding(.leading, 50)
            }*/
            
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

struct SnackView_Previews: PreviewProvider {
    static var previews: some View {
        SnackView()
    }
}
