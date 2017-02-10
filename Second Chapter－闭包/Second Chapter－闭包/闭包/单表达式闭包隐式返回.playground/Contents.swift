//: Playground - noun: a place where people can play

import UIKit

                        /* 单表达式闭包隐式返回 */
/* -------------------------------------------------------------------
 
    单行表达式闭包可以通过省略return关键字来隐式返回单行表达式的结果
 
 ------------------------------------------------------------------ */
let names = ["a", "b", "c", "d", "e"]
var sortNames = names.sorted(by: { s1, s2 in s1 > s2 })
print(sortNames)
		