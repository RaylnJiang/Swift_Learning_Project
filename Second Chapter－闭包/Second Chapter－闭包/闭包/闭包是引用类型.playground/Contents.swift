//: Playground - noun: a place where people can play

import UIKit

                        /* 闭包是引用类型 */
/* -------------------------------------------------------------------
 
    值捕获例子中,incrementBy10 和 incrementBy20 都是常量,但是这些常量指向的闭包仍然可以增加其捕 获的变量的值。这是因为函数和闭包都是引用类型。

    无论你将函数或闭包赋值给一个常量还是变量,你实际上都是将常量或变量的值设置为对应函数或闭包的引用。
 
    如果你将闭包赋值给了两个不同的常量或变量,两个值都会指向同一个闭包:
 
 ------------------------------------------------------------------ */
func makeIncrementer(amountParam amount: Int) -> () -> Int {

    var total = 0
    
    func incrementer() -> Int {
    
        total += amount
        
        return total
    }
    
    return incrementer
}

let incrementerBy10 = makeIncrementer(amountParam: 10)
incrementerBy10()
incrementerBy10()
let alsoIncrementerBy10 = incrementerBy10
alsoIncrementerBy10()


