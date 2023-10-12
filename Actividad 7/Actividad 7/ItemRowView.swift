//
//  ItemRowView.swift
//  Actividad 7
//
//  Created by DanielHf on 04/10/23.
//

import SwiftUI

struct ItemRowView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: BebidasView(), label:{
                    HStack {
                        Image("Ice")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 120)
                        VStack(alignment: .leading){
                            Text("Bebidas").font(.title)
                        }
                    }.padding(.bottom, 50)
                    
                })
                
                NavigationLink(destination: AlimentosView(), label:{
                    HStack {
                        Image("Hotdog")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 120)
                        VStack(alignment: .leading){
                            Text("Alimentos").font(.title)
                        }
                    }.padding(.bottom, 50)
                    
                })
                
                NavigationLink(destination: SnackView(), label:{
                    HStack {
                        Image("Nachos")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 120)
                        VStack(alignment: .leading){
                            Text("Snacks").font(.title)
                        }
                    }.padding(.bottom, 50)
                    
                })
                
                NavigationLink(destination: DulcesView(), label:{
                    HStack {
                        Image("Corneto")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 120)
                        VStack(alignment: .leading){
                            Text("Dulces").font(.title)
                        }
                    }.padding(.bottom, 50)
                    
                })
            }
        }
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView()
    }
}
