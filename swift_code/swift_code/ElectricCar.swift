//
//  ElectricCar.swift
//  swift_code
//
//  Created by 彭程 on 2020/2/5.
//  Copyright © 2020 彭程. All rights reserved.
//

import Foundation

// MARK: - 继承
//电动车
class ElectricCar : Car{
    var energySouce = "Electric"  // 能量来源电能
    
    override func carInfo() -> String {
      return "\(super.carInfo()),energySouce:\(energySouce)"
    }
    
}
