//
//  CoreDataDemoApp.swift
//  Shared
//
//  Created by DanielHf on 13/10/23.
//

import SwiftUI

@main
struct CoreDataDemoApp: App {
    let persistenceController = PersistenceController.shared
        
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,
                             persistenceController.container.viewContext)
        }
    }
}
