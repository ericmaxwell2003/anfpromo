//
//  Button.swift
//  AnfPromo
//
//  Created by Maxwell, Eric on 8/19/16.
//  Copyright © 2016 Credible Software. All rights reserved.
//

import Foundation
import CoreData


class Button: NSManagedObject {

    static func buttonFromDto(dto: ButtonDto, inManagedObjectContext context : NSManagedObjectContext) -> Button?
    {
        if let button = NSEntityDescription.insertNewObjectForEntityForName("Button", inManagedObjectContext: context) as? Button {
            button.id = NSUUID().UUIDString
            button.title = dto.title
            button.targetUrl = dto.targetUrl
            return button;
        }
        return nil
    }
    
}
