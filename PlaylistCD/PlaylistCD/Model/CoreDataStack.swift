//
//  CoreDataStack.swift
//  PlaylistCD
//
//  Created by Michael Di Cesare on 9/25/19.
//  Copyright © 2019 Michael Di Cesare. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "PlaylistCD")
        // _ means IDGAFOS
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error{
                fatalError("Failed to Load Persistent Store \(error)")
            }
        })
        return container
    }()
    
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}
