//
//  CashContext.swift
//  QFStrategy
//
//  Created by 情风 on 2019/1/14.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

class CashContext: NSObject {
    var cash: CashSuper
    
    init(cashType: CashType) {
        switch cashType {
        case .normal:
            cash = CashNormal()
        case .discount:
            cash = CashDiscount()
        case .rebete:
            cash = CashRebate()
        }
    }
    
    func getResult(_ money: Float) -> Float {
        return cash.getResult(money)
    }
}
