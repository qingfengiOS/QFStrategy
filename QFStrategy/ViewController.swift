//
//  ViewController.swift
//  QFStrategy
//
//  Created by 情风 on 2019/1/14.
//  Copyright © 2019 qingfengiOS. All rights reserved.
//

import UIKit

enum CashType {
    case normal
    case discount
    case rebete
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        factory()
        print("---------------")
        strategy()
        /**
         策略模式是一种定义一系列算法的方法，从概念上来看，所有这些算法完成的都是相同的工作，只是实现不同，他可以以相同的方式调用所有的算法，减少了各种算法类与使用类之间的耦合。
         
         策略模式的strategy类层次为context定义了一系列的可供重用的算法或行为。继承有助于析取出这些算法中的公共功能。
         */
    }

    /// 工厂模式实现，客户端需要知道 具体的算法类
    func factory() {
        var cash: CashSuper
        
        cash = CashNormal()
        print("\(cash.getResult(600))")
        
        cash = CashRebate()
        print("\(cash.getResult(600))")
        
        cash = CashDiscount()
        print("\(cash.getResult(600))")
    }
    
    
    /// 策略模式实现，客户端不需要知道具体的算法类 只要知道strategy层次的content类即可
    func strategy() {
        var context: CashContext
        context = CashContext(cashType: CashType.normal)
        print("\(context.getResult(600))")
        
        context = CashContext(cashType: CashType.rebete)
        print("\(context.getResult(600))")
        
        context = CashContext(cashType: CashType.discount)
        print("\(context.getResult(600))")
    }
    
    
    
}

