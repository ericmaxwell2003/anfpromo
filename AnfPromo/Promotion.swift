//
//  Promotion.swift
//  AnfPromo
//
//  Created by Maxwell, Eric on 8/19/16.
//  Copyright © 2016 Credible Software. All rights reserved.
//

import Foundation
import CoreData


class Promotion: NSManagedObject {
    
    static func promotionFromDto(promotionDto: PromotionDto,
                                 inManagedObjectContext context: NSManagedObjectContext) -> Promotion? {

        if let promotion = NSEntityDescription.insertNewObjectForEntityForName("Promotion", inManagedObjectContext: context) as? Promotion {
 
            promotion.id = NSUUID().UUIDString
            promotion.title = promotionDto.title
            promotion.desc = promotionDto.desc
            promotion.imageUrl = promotionDto.imageUrl
            promotion.footer = promotionDto.footer
            promotion.button = Button.buttonFromDto(promotionDto.buttons!.first!,
                                                    inManagedObjectContext: context)
            
            return promotion
        }
        return nil
    }

}
