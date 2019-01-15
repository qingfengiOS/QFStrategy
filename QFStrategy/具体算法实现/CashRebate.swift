//
//  CashRebate.swift
//  QFStrategy
//
//  Created by 情风 on 2019/1/14.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

class CashRebate: CashSuper {

    var conditionMoney: CFloat
    var returnMoney: Float

    init(conditionMoney: Float, returnMoney: Float) {
        self.conditionMoney = conditionMoney
        self.returnMoney = returnMoney
    }
    
    override init() {
        self.conditionMoney = 300
        self.returnMoney = 100
        
    }
    
    override func getResult(_ money: Float) -> Float {
        
        return money - Float((Int(money) / Int(conditionMoney)) * Int(returnMoney))
    }
}
