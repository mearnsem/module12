//
//  Song+CoreDataProperties.swift
//  PlaylistNSUserDefaults
//
//  Created by Emily Mearns on 5/19/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Song {

    @NSManaged var songTitle: String
    @NSManaged var artist: String
    @NSManaged var playlist: Playlist

}
