//: Playground - noun: a place where people can play

import UIKit

                            /* 参数名称缩写 */
/* -------------------------------------------------------------------
 
    内联闭包可以省略参数名直接用参数顺序$0，$1，$2调用.
 
 ------------------------------------------------------------------ */
let names = ["a", "b", "c", "d", "e"]
var sortNames = names.sorted(by: { $0 > $1 })
print(sortNames)


