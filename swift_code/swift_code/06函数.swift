//
//  06函数.swift
//  swift_code
//
//  Created by 彭程 on 2020/2/13.
//  Copyright © 2020 彭程. All rights reserved.
//

func minMax(array:[Int])->(min:Int,max:Int)?{
    guard !array.isEmpty else {return nil}
    var min = array[0]
    var max = array[0]
    for value in array[1..<array.count]{
        if value<min {
            min = value
        }else if value>max{
            max = value
        }
    }
    return (min,max)
}


//var minAndMax = (array:[Int])->(min:Int,max:Int){
//    var min = array[0]
//    var max = array[0]
//    for value in array[1..<array.count]{
//        if value<min {
//            min = value
//        }else if value>max{
//            max = value
//        }
//    }
//    return (min,max)
//}




