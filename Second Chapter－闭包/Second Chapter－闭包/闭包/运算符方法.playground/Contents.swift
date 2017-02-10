//: Playground - noun: a place where people can play

import UIKit

                            /* 运算符方法 */
/* -------------------------------------------------------------------
 
    Swift的String类型定义了关于大于号（>）的字符串实现，其作为一个函数接受两个String类型的参数并返回Bool类型的值。而这正好与sort(_:)方法的第二个参数需要的函数类型相符合。
 
 ------------------------------------------------------------------ */
let names = ["A", "B", "C", "D", "E"]
var sortNames = names.sorted(by: >)

		