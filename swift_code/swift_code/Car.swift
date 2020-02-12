//
//  Car.swift
//  swift_code
//
//  Created by 彭程 on 2020/2/5.
//  Copyright © 2020 彭程. All rights reserved.
//

import Foundation

/**
 public enum EventSubtype : Int {
    // available in iPhone OS 3.0
     case none

     // for UIEventTypeMotion, available in iPhone OS 3.0
     case motionShake

     // for UIEventTypeRemoteControl, available in iOS 4.0
     case remoteControlPlay
      ....

 }
 */

// MARK: - 摇塞子那节课 在motionEnded 函数里面那个   UIEvent.EventSubtype 参数 就是 枚举

enum CarType {
    case SUV
    case SportCar
    case Van
}

class Car {
    var color: String = "红色"
    var numberOfSeats: Int = 5
    var carType: CarType = .SUV



    init() {
        
    }

    // swift 多构造
    convenience init(customColor: String, customNumberOfSeats: Int, customCarType: CarType) {
        self.init()
        color = customColor
        numberOfSeats = customNumberOfSeats
        carType = customCarType
    }
    
    // MARK: -  上面两个构造和下面构造作用一样
    //    init(customColor:String = "红色",customNumberOfSeats:Int = 5,customCarType:CarType = .SUV){
    //        self.color = customColor
    //        self.numberOfSeats = customNumberOfSeats
    //        self.carType = customCarType
    //    }

    func carInfo() ->String {
        return "carInfo: color: \(color) , numberOfSeats:\(numberOfSeats),carType:\(carType)"
    }
}
