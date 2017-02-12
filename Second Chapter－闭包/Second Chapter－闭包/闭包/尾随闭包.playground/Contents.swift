//: Playground - noun: a place where people can play

import UIKit

                            /* 尾随闭包 */
/* -------------------------------------------------------------------
 
    如果你需要将一个很长的闭包表达式作为最后一个参数传递给函数,可以使用尾随闭包来增强函数的可读性。
 
 ------------------------------------------------------------------ */
let names = ["A", "B", "C", "D", "E"]
var sortNames = names.sorted(){ $0 > $1 }
print(sortNames)

func calculateTwoInts(num1: Int, num2: Int, calculateFunc: (Int, Int) -> Int) -> Int {

    return calculateFunc(num1, num2)
}

let result_A = calculateTwoInts(num1: 1, num2: 2) { (num1, num2) -> Int in
    return num1 + num2
}

let result_B = calculateTwoInts(num1: 3, num2: 2){ $0 * $1 }
print(result_B)

// 注意 字典 digitNames 下标后跟着一个叹号( ! ),因为字典下标返回一个可选值(optional value),表 明该键不存在时会查找失败。在上例中,由于可以确定 number % 10 总是 digitNames 字典的有效下标,因 此叹号可以用于强制解包 (force-unwrap) 存储在下标的可选类型的返回值中的 String 类型的值。

let numberMap = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
let numberArray = [16, 44, 87]

let numberString = numberArray.map{ (number) -> String in
    
    var number = number
    var output = ""
    
    repeat {
    
        output = numberMap[number % 10]! + output
        number /= 10
        
    } while number > 0
    
    return output
}
print(numberString)

		