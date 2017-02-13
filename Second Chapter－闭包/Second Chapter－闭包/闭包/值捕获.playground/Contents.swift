//: Playground - noun: a place where people can play

import UIKit

                            /* 值捕获 */
/* -------------------------------------------------------------------
 
    闭包可以在其被定义的上下文中捕获常量或变量。即使定义这些常量和变量的原作用域已经不存在,闭包仍然可以在闭包函数体内引用和修改这些值。
 
    Swift 中,可以捕获值的闭包的最简单形式是嵌套函数,也就是定义在其他函数的函数体内的函数。嵌套函数可 以捕获其外部函数所有的参数以及定义的常量和变量。
 
 ------------------------------------------------------------------ */
func makeIncrementer(incremtParam amount: Int) -> () -> Int {

    var totalSum = 0
    
    func incrementer() -> Int {
    
        totalSum += amount
        
        return totalSum
    }
    
    return incrementer
}

let incrementerBy10 = makeIncrementer(incremtParam: 10)
incrementerBy10()
let incrementerBy20 = makeIncrementer(incremtParam: 20)
incrementerBy20()
incrementerBy20()
incrementerBy10()


