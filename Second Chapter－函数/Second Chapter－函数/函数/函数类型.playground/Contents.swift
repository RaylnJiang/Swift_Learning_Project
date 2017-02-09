//: Playground - noun: a place where people can play

import UIKit

                            /* 函数类型 */
/* -------------------------------------------------------------------
 
    每个函数都有种特定的 函数类型 ,函数的类型由函数的参数类型和返回类型组成。
 
    Eg:
        func addTwoInts(_ a: Int, _ b: Int) -> Int {
            return a + b
        }
        func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
            return a * b 
        }
        这两个函数的类型是 (Int, Int) -> Int ,可以解读为“这个函数类型有两个 Int 型的参数并返回一个 Int 型的值。”。
 
        func printHelloWorld() {
            print("hello, world")
        }
        这个函数的类型是: () -> Void ,或者叫“没有参数,并返回 Void 类型的函数”。
 
 ------------------------------------------------------------------ */


                            /* 使用函数类型 */
/* -------------------------------------------------------------------
 
    使用函数类型就像使用其他类型一样。
 
    你可以定义一个类型为函数的常量或变量,并将适当 的函数赋值给它
 
 ------------------------------------------------------------------ */
func addTwoInts(a: Int, b: Int) -> Int {

    return a + b
}

var anotherFunc: (Int, Int) -> Int = addTwoInts
let result = anotherFunc(1, 2)
print("result = \(result)")


                        /* 函数类型作为参数类型 */
/* -------------------------------------------------------------------
 
    你可以用 (Int, Int) -> Int 这样的函数类型作为另一个函数的参数类型。这样你可以将函数的一部分实现留给 函数的调用者来提供。
 
 ------------------------------------------------------------------ */
func mutiplyTwoInts(_ a: Int, _ b: Int) -> Int {

    return a * b
}

func printResult(_ mathFunc: (Int, Int) -> Int, a: Int, b: Int) {

    print("result = \(mathFunc(2, 3))")
}

printResult(mutiplyTwoInts, a: 2, b: 3)


                        /* 函数类型作为返回类型 */
/* -------------------------------------------------------------------
 
    你可以用函数类型作为另一个函数的返回类型。你需要做的是在返回箭头(->)后写一个完整的函数类型。
 
 ------------------------------------------------------------------ */
func upFunc(_ a: Int) -> Int {

    return a + 1
}

func downFunc(_ b: Int) -> Int {

    return b - 1
}

func chooseFunc(isDown: Bool) -> (Int) -> Int {

    return isDown ? downFunc : upFunc;
}

var currentValue = 3
let farFromZero = chooseFunc(isDown: currentValue > 0)

let c = farFromZero(10)

while currentValue != 0 {
    
    print(currentValue)
    
    currentValue = farFromZero(currentValue)
}
