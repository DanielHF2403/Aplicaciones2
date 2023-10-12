//
//  ItemsRowView.swift
//  Pantallas
//
//  Created by DanielHf on 02/10/23.
//

import SwiftUI

struct ItemsRowView: View {
    var body: some View {
        HStack {
            Image("mac")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            VStack(alignment: .leading){
                Text("Macbook Pro").font(.title)
                Text("$31,899").fontWeight(.semibold).font(.body)
            }
        }
    }
}

struct ItemsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsRowView()
    }
}
