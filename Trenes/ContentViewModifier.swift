//
//  ContentViewModifier.swift
//  Trenes
//
//  Created by DanielHf on 25/09/23.
//

import SwiftUI

struct ContentViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 12)
                ).padding()
    }
}
