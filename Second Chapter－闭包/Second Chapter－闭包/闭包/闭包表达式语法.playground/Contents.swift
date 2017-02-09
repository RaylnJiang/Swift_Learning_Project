//: Playground - noun: a place where people can play

import UIKit

                        /* 闭包表达式语法 */
/* -------------------------------------------------------------------
 
    闭包表达式语法有如下的一般形式:
    { (parameters) -> returnType in
        statements
    }
 
    闭包表达式的参数可以是inout参数,但不能设定默认值。
 
    也可以使用具名的可变参数(译者注:但是如果可变参 数不放在参数列表的最后一位的话,调用闭包的时时编译器将报错。可参考这里)。元组也可以作为参数和返回 值。
 
 ------------------------------------------------------------------ */
let names = ["Eva", "Fuck", "Alian", "Steven", "KissAss"]
let sortNames = names.sorted { (s1: String, s2: String) -> Bool in
    return s1 < s2
}
print(sortNames)

