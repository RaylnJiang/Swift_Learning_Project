//: Playground - noun: a place where people can play

import UIKit

                        /* 函数参数与返回值 */
/* -------------------------------------------------------------------
 
    你可以定义任何类型的函数,包括从只带一个未名参数的简单函数到 复杂的带有表达性参数名和不同参数选项的复杂函数
 
 ------------------------------------------------------------------ */


                            /* 无参函数 */
/* -------------------------------------------------------------------
 
    函数可以没有参数
 
    尽管这个函数没有参数,但是定义中在函数名后还是需要一对圆括号。当被调用时,也需要在函数名后写一对圆括号。
 
 ------------------------------------------------------------------ */
func sayHello() -> String {

    return "hello jrayln"
}

print(sayHello())


                            /* 多参函数 */
/* -------------------------------------------------------------------
 
    函数可以有多种输入参数,这些参数被包含在函数的括号之中,以逗号分隔
 
 ------------------------------------------------------------------ */
func greeting(name: String, alreadyGreet: Bool) -> String{

    if alreadyGreet {
    
        return "Hello again " + name
        
    } else {
    
        return "Hello " + name
    }
}

greeting(name: "JRayln", alreadyGreet: true)
greeting(name: "Iris Rainbow", alreadyGreet: false)


                            /* 无返回值函数 */
/* -------------------------------------------------------------------
 
    函数可以没有返回值
 
    注意 严格上来说,虽然没有返回值被定义, sayGoodbye(_:) 函数依然返回了值。没有定义返回类型的函数会 返回一个特殊的 Void 值。它其实是一个空的元组(tuple),没有任何元素,可以写成()。
 
    被调用时，一个函数的返回值可以被忽略
 
    注意 返回值可以被忽略,但定义了有返回值的函数必须返回一个值,如果在函数定义底部没有返回任何值,将 导致编译时错误(compile-time error)
 
 ------------------------------------------------------------------ */
func fuck(person: String) {

    print("fuck \(person)")
}

fuck(person: "bitch")

func printAndCount(description: String) -> Int {

    print(description)
    
    return description.characters.count
}

func printWithoutCount(description: String) {

    let _ = printAndCount(description: description)
}

printAndCount(description: "Jrayln")
printWithoutCount(description: "JRayln")


                        /* 多重返回值函数 */
/* -------------------------------------------------------------------
 
    你可以用元组(tuple)类型让多个值作为一个复合值从函数中返回
 
    元组的成员不需要在元组从函数中返回时命名,因为它们的名字已经在函数返回类型中指定了。
 
 ------------------------------------------------------------------ */
func findMinAndMaxValue(array: [Int]) -> (min: Int, max: Int) {

    var minValue = array[0]
    var maxValue = array[0]
    
    for value in array[1..<array.count - 1] {
    
        if value < minValue {
        
            minValue = value
            
        } else if value > maxValue {
        
            maxValue = value
        }
    }
    
   return (minValue, maxValue)
}

let result = findMinAndMaxValue(array: [-1, 100, 0, 32, -32, 101, 102])
print("maxValue is \(result.max), minValue is \(result.min)")


                        /* 可选元组返回类型 */
/* -------------------------------------------------------------------
 
    如果函数返回的元组类型有可能整个元组都“没有值”,你可以使用可选的( optional ) 元组返回类型反映 整个元组可以是nil的事实。你可以通过在元组类型的右括号后放置一个问号来定义一个可选元组,例如 (Int, Int)? 或 (String, Int, Bool)?
 
    注意 可选元组类型如 (Int, Int)? 与元组包含可选类型如 (Int?, Int?) 是不同的.可选的元组类型,整个 元组是可选的,而不只是元组中的每个元素值。
 
 ------------------------------------------------------------------ */
func findShortAndLong(array: [String]) -> (shortStr: String, longStr: String)? {

    if array.isEmpty {
    
        print("这是一个空数组，请传入有值数组")
        return nil
    }
    
    var currentShort = array[0]
    var currentLong = array[0]
    
    for str in array[1..<array.count] {
    
        if str.characters.count < currentShort.characters.count {
        
            currentShort = str
            
        } else if str.characters.count > currentLong.characters.count {
        
            currentLong = str;
        }
    }
    
    return (currentShort, currentLong)
}

let SLResult = findShortAndLong(array: ["123", "123123", "1", "sdhfu"])
let shortString = (SLResult?.shortStr)!
let longString = (SLResult?.longStr)!
print("shortString is \(shortString), longString is \(longString)")

let emptyResult = findShortAndLong(array: [])