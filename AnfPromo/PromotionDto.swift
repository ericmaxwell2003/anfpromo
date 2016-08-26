//
//  PromotionDto.swift
//  AnfPromo
//
//  Created by Maxwell, Eric on 8/19/16.
//  Copyright © 2016 Credible Software. All rights reserved.
//

import Foundation

struct PromotionDto {
    var title : String!
    var desc : String!
    var footer : String?
    var imageUrl : String!
    var buttons : Array<ButtonDto>?
}