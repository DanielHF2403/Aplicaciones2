//
//  WelcomeView.swift
//  appstorage
//
//  Created by DanielHf on 21/11/23.
//

import SwiftUI

struct WelcomeView: View {
    @AppStorage("myName") var myName: String = ""
    @AppStorage("myAge") var myAge: String = ""
    @AppStorage("mySize") var mySize: String = ""
    @AppStorage("myWeight") var myWeight: String = ""
    @AppStorage("mySong") var mySong: String = ""

    var body: some View {
    Text("Hola \(myName), tu edad es \(myAge), tu estatura es \(mySize), pesas \(myWeight) y tu canción favorita es \(mySong)")
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
