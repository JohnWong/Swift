//
//  main.swift
//  EfficiencyTest
//
//  Created by John Wong on 9/7/14.
//  Copyright (c) 2014 John Wong. All rights reserved.
//

import Foundation

/*
let beforeTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
var i = 0
for index in 1...10000000 {
    i += 1
}
let afterTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
println(afterTimeStamp - beforeTimeStamp)

// Loop in Swift
//   100,000        0.01704
//  1000,000        0.17276
// 1,000,000        1.72903
*/

/*
let beforeTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
var array:[Int] = []
for index in 1...10000000 {
    array.append(1)
}
let afterTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
println(afterTimeStamp - beforeTimeStamp)
// Array append integer in Swift
//   100,000        0.65086
//  1000,000        5.94618
// 1,000,000        59.56704
*/

/*
let beforeTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
var array:[String] = []
for index in 1...1000000 {
    array.append("1")
}
let afterTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
println(afterTimeStamp - beforeTimeStamp)
// Array append string in Swift
//   100,000        0.59500
//  1000,000        5.91524
// 1,000,000        58.06291
*/

/*
let beforeTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
var string:String = ""
for index in 1...10000000 {
    string += "1"
}
let afterTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
println(afterTimeStamp - beforeTimeStamp)
// Array append string in Swift
//   100,000        0.04958
//  1000,000        0.43942
// 1,000,000        4.45237
*/

let beforeTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
let n = 1000000
var array:[Int] = [Int](count: n, repeatedValue: 0)
for i in 0..<n{
    array[i] = random()
}
let afterTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
println(afterTimeStamp - beforeTimeStamp)
sort(&array)
let  endTimeStamp:NSTimeInterval = NSDate().timeIntervalSince1970
println(endTimeStamp - afterTimeStamp)
// Array assign and sort in Swift
// 100,000      0.27816 0.44849
// 1000,000     2.68700 4.85194
// 1,000,000    27.56229 53.96336