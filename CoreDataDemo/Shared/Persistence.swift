//
//  Persistence.swift
//  CoreDataDemo
//
//  Created by DanielHf on 23/10/23.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
 
    init() {
        container = NSPersistentContainer(name: "Products")
        
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Container load failed: \(error)")
            }
        }
    }
}
