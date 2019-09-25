//
//  Playlist+Convenience.swift
//  PlaylistCD
//
//  Created by Michael Di Cesare on 9/25/19.
//  Copyright © 2019 Michael Di Cesare. All rights reserved.
//

import Foundation
import CoreData
extension Playlist {
    convenience init(playlistName: String, songs: [Song] = [], moc: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: moc)
        self.playlistName = playlistName
    }
}
