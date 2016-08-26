//
//  PromotionSyncService.swift
//  AnfPromo
//
//  Created by Maxwell, Eric on 8/19/16.
//  Copyright © 2016 Credible Software. All rights reserved.
//

import CoreData
import UIKit

class PromotionSyncService {

    static let sharedInstance = PromotionSyncService()
    
    let remoteApi = PromotionsApi()

    func performSync() {
        
        let qualityOfServiceClass = QOS_CLASS_BACKGROUND
        let backgroundQueue = dispatch_get_global_queue(qualityOfServiceClass, 0)
        dispatch_async(backgroundQueue, {
        
            print("This is run on the background queue")
        
            var moc: NSManagedObjectContext? =
                (UIApplication.sharedApplication().delegate as? AppDelegate)?.managedObjectContext
            
            let promotionDtos = remoteApi.fetchPromos()
            
            moc?.performBlock({
                
                self.deleteAllPromotions()
                
                for promoDto in promotionDtos {
                    _ = Promotion.promotionFromDto(promoDto, inManagedObjectContext: self.moc!)
                }
                
                do {
                    try self.moc!.save()
                    
                } catch let error {
                    print("Error occured \(error)")
                }
                
            })

            
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                print("This is run on the main queue, after the previous code in outer block")
            })
        })
        
    }

    private func deleteAllPromotions() {
        let fetchRequest = NSFetchRequest(entityName: "Promotion")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        do {
            try self.moc?.executeRequest(deleteRequest)
        } catch let error as NSError {
            print("Error occured \(error)")
        }
    }
    
}



