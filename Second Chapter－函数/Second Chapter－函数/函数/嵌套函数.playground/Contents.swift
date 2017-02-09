//: Playground - noun: a place where people can play

import UIKit

                            /* 嵌套函数 */
/* -------------------------------------------------------------------
 
    到目前为止本章中你所见到的所有函数都叫 全局 函数(global functions),它们定义在 全局域中。你也可以把函数定义在别的函数体中,称作 嵌套函数 (nested functions)。

    默认情况下,嵌套函数是对外界不可见的,但是可以被它们的外围函数(enclosing function)调用。
 
    一个外围函数也可以返回它的某一个嵌套函数,使得这个函数可以在其他域中被使用。
 
 ------------------------------------------------------------------ */
func chooseFunc(isUp: Bool) -> (Int) -> Int {

    func upFunc(_ a: Int) -> Int {
    
        return a + 1
    }
    
    func downFunc(_ b: Int) -> Int {
        
        return b - 1
    }
    
    return isUp ? upFunc : downFunc
}

var currentValue = -3
let currentFunc = chooseFunc(isUp: currentValue < 0)

print("Start")
while currentValue != 0 {
    
    print(currentValue)
    currentValue = currentFunc(currentValue)
}
print("Zero")
		