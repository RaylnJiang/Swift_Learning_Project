//: Playground - noun: a place where people can play

import UIKit

                        /* 根据上下文推断类型 */
/* -------------------------------------------------------------------
 
    上面的内联闭包书写还可以更加精简，因为sort(_:)函数需要的函数参数类型已知即：(String, String) -> Bool，因为所有的类型都可以被正确推断，返回箭头（->）和围绕在参数周围的括号也可以被省略：
 
 ------------------------------------------------------------------ */
let names = ["A", "B", "C", "D", "E"]
let sortNames = names.sorted { s1, s2 in
    return s1 > s2
}


