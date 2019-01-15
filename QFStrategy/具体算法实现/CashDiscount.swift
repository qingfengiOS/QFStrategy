//
//  CashDiscount.swift
//  QFStrategy
//
//  Created by 情风 on 2019/1/14.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit


/// 打折收费
class CashDiscount: CashSuper {

    var rate: Float
    
    override init() {
        self.rate = 0.8
    }
    
    init(discountRate: Float) {
        self.rate = discountRate
    }
    
    override func getResult(_ money: Float) -> Float {
        return money * rate
    }
    
}
