//
//  Playlist.swift
//  PlaylistNSUserDefaults
//
//  Created by Emily Mearns on 5/19/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData


class Playlist: NSManagedObject {

    convenience init?(name: String, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        guard let entity = NSEntityDescription.entityForName("Playlist", inManagedObjectContext: context) else {
            return nil
        }
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.name = name
    }
}
