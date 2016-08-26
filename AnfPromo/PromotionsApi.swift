//
//  PromotionsApi.swift
//  AnfPromo
//
//  Created by Maxwell, Eric on 8/19/16.
//  Copyright © 2016 Credible Software. All rights reserved.
//

import Foundation

class PromotionsApi {
    
    static let sharedInstance = PromotionsApi()

    func fetchPromos() -> Array<PromotionDto> {
        var promotions = Array<PromotionDto>()
        
        for i in 0...3 {
            var promotion = PromotionDto()
            let iStr = String(i)
            promotion.title = "Title " + iStr
            promotion.desc = "Description " + iStr
            promotion.imageUrl = "ImageUrl_" + iStr
            promotion.footer = "Footer " + iStr
            promotion.buttons = Array<ButtonDto>()
            promotion.buttons?.append(ButtonDto(title: "Button " + iStr, targetUrl: "ButtonUrl_" + iStr));
            promotions.append(promotion)
        }
        
        return promotions
    }
    
    
}
