//
//  ContentView.swift
//  Pantallas
//
//  Created by DanielHf on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: ItemDetailsView(), label:{ ItemsRowView() })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
