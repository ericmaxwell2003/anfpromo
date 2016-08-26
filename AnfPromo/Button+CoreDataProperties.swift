//
//  Button+CoreDataProperties.swift
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

extension Button {

    @NSManaged var id: String?
    @NSManaged var title: String?
    @NSManaged var targetUrl: String?
    @NSManaged var promotion: Promotion?

}
