//
//  MeansOfTransportView.swift
//  Trenes
//
//  Created by DanielHf on 25/09/23.
//

import SwiftUI

struct MeansOfTransportView: View {
    
    var name: String
    var icon: String
    @Binding var isPressed : Bool
    
    var body: some View {
        Label(name, systemImage: icon)
            .onTapGesture {
                withAnimation(){
                    self.isPressed.toggle()
                }
            }
            .scaleEffect(isPressed ? 2.5: 1.0)
            .rotationEffect(isPressed ? .degrees(180) : .degrees(0))
            .modifier(ContentViewModifier())
    }
}

struct MeansOfTransportView_Previews: PreviewProvider {
    static var previews: some View {
        MeansOfTransportView(name: "Barco", icon: "car", isPressed: .constant(false))
    }
}
