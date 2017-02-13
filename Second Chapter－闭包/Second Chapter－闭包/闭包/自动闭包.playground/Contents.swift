//: Playground - noun: a place where people can play

import UIKit

                            /* 自动闭包 */
/* -------------------------------------------------------------------
 
    自动闭包是一种自动创建的闭包,用于包装传递给函数作为参数的表达式。
 
    这种闭包不接受任何参数,当它被调用的时候,会返回被包装在其中的表达式的值。这种便利语法让你能够省略闭包的花括号,用一个普通的表达式来代替显式的闭包。
 
    我们经常会调用采用自动闭包的函数,但是很少去实现这样的函数。
 
    自动闭包让你能够延迟求值,因为直到你调用这个闭包,代码段才会被执行。
 
    延迟求值对于那些有副作用(Side Effect)和高计算成本的代码来说是很有益处的,因为它使得你能控制代码的执行时机。
 
 ------------------------------------------------------------------ */
var personArray = ["A", "B", "C", "D", "E"]
print(personArray.count)

//personArray.remove(at: 0)

let autoClosure = { personArray.remove(at: 0) }
print(personArray.count)

// 在调用自动闭包之前，元素还未被移除数组
print("Now Name is \(autoClosure())")
print(personArray.count)

// 将闭包作为参数传递给函数时,你能获得同样的延时求值行为。
func service(customer autoClosure: () -> String) {

    print("Now name is \(autoClosure())")
}

service(customer: { personArray.remove(at: 0) })
print(personArray)

var nowPersonArray = personArray
func server(customer customerClosuer: @autoclosure () -> String) {

    print("Now name is \(customerClosuer())")
}

service { () -> String in
    
    nowPersonArray.remove(at: 0)
}
print(nowPersonArray)

//TODO: 自动闭包可逃逸（重新理解）
// 如果你想让一个自动闭包可以“逃逸”,则应该同时使用 @autoclosure 和 @escaping 属性
var nameArray = ["a", "b", "c", "d", "e"]

var nameProviders: [() -> String] = []
func collectName(_ nameProvider: @autoclosure @escaping () -> String) {

    nameProviders.append(nameProvider)
}

collectName(nameArray.remove(at: 0))
collectName(nameArray.remove(at: 0))

print(nameProviders.count)

for nameProvider in nameProviders {
    
    print("Now name is \(nameProvider())")
}
print(nameProviders.count)


		
