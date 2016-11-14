//: Playground - noun: a place where people can play

import Cocoa

                        /* For-In循环 */
/* -------------------------------------------------------------------
 
 可以使用for-in循环来遍历一个集合中的所有元素。
 
 可以遍历一个字典，来访问它的键值对。
 
 ------------------------------------------------------------------ */
for index in 1...5 {
    
    // index 代表着闭区间内每一项的值
    print("\(index) times 5 is \(index * 5)")
}

let baseValue = 2
let maxPower = 10
var sumValue = 1

for _ in 1...maxPower {

    // 如果不需要知道闭区间的每一项的值，则可用 _ 代替
    sumValue *= baseValue
}
print("sumValue is \(sumValue)")

var namesArray = ["张三", "李四", "王五", "赵六"]
for name in namesArray {

    print("Hello \(name)!")
}

var animalDict = ["Dog": 4, "Cat": 4, "Snake": 0, "monkey": 2]
for (animalName, legCount) in animalDict {

    print("\(animalName) has \(legCount) legs")
}

