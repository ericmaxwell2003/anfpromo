//
//  Promotion+CoreDataProperties.swift
//  AnfPromo
//
//  Created by Maxwell, Eric on 8/19/16.
//  Copyright © 2016 Credible Software. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Promotion {

    @NSManaged var id: String?
    @NSManaged var desc: String?
    @NSManaged var footer: String?
    @NSManaged var title: String?
    @NSManaged var imageUrl: String?
    @NSManaged var button: NSManagedObject?

}
