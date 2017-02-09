//: Playground - noun: a place where people can play

import UIKit

                    /* 函数参数标签和参数名称 */
/* -------------------------------------------------------------------
 
    每个函数参数都有一个参数标签( argument label )以及一个参数名称( parameter name )。
 
    参数标签在调用函 数的时候使用;调用的时候需要将函数的参数标签写在对应的参数前面。参数名称在函数的实现中使用。默认情 况下,函数参数使用参数名称来作为它们的参数标签。
 
 ------------------------------------------------------------------ */


                            /* 参数标签 */
/* -------------------------------------------------------------------
 
    你可以在函数名称前指定它的参数标签,中间以空格分隔
 
    参数标签的使用能够让一个函数在调用时更有表达力,更类似自然语言,并且仍保持了函数内部的可读性以及清晰的意图。
 
 ------------------------------------------------------------------ */
func myDescription(name: String, from hometown: String) -> String {

    return name + " is from " + hometown
}

let desStr = myDescription(name: "JRayln", from: "MDJ")


                            /* 忽略参数标签 */
/* -------------------------------------------------------------------
 
    如果你不希望为某个参数添加一个标签,可以使用一个下划线( _ )来代替一个明确的参数标签
 
 func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
 // In the function body, firstParameterName and secondParameterName
 // refer to the argument values for the first and second parameters.
 }
 someFunction(1, secondParameterName: 2)
 
    如果一个参数有一个标签,那么在调用的时候必须使用标签来标记这个参数。
 
 ------------------------------------------------------------------ */


                            /* 默认参数值 */
/* -------------------------------------------------------------------
 
    你可以在函数体中通过给参数赋值来为任意一个参数定义默认值(Deafult Values)。当默认值被定义后,调用 这个函数时可以忽略这个参数。
 
 func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
 // If you omit the second argument when calling this function, then
 // the value of parameterWithDefault is 12 inside the function body.
 }
 someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
 someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12
 
    将不带有默认值的参数放在函数参数列表的最前。一般来说,没有默认值的参数更加的重要,将不带默认值的参数放在最前保证在函数调用时,非默认参数的顺序是一致的,同时也使得相同的函数在不同情况下调用时显得更为清晰。
 
 ------------------------------------------------------------------ */


                            /* 可变参数 */
/* -------------------------------------------------------------------
 
    一个可变参数(variadic parameter)可以接受零个或多个值。
 
    函数调用时,你可以用可变参数来指定函数参数 可以被传入不确定数量的输入值。
    
    通过在变量类型名后面加入( ... )的方式来定义可变参数。
 
    注意 一个函数最多只能拥有一个可变参数。
 
 ------------------------------------------------------------------ */
func totalCount(_ numbers: Double...) -> Double {

    var total: Double = 0
    
    for number in numbers {
    
        total += number
    }
    
    return total / Double(numbers.count)
}

print(totalCount(10, 10, 10))
//print(totalCount(numbers: 10, 10, 10, 10, 10))
//print(totalCount(numbers: 1, 2, 3, 4, 5))


                            /* 输入输出参数 */
/* -------------------------------------------------------------------
 
    函数参数默认是常量。
 
    试图在函数体中更改参数值将会导致编译错误(compile-time error)。这意味着你不能错 误地更改参数值。如果你想要一个函数可以修改参数的值,并且想要在这些修改在函数调用结束后仍然存在,那 么就应该把这个参数定义为输入输出参数(In-Out Parameters)。
 
    定义一个输入输出参数时,在参数定义前加 inout 关键字。
 
    一个输入输出参数有传入函数的值,这个值被函数 修改,然后被传出函数,替换原来的值。
 
    你只能传递变量给输入输出参数。你不能传入常量或者字面量(literal value),因为这些量是不能被修改 的。当传入的参数作为输入输出参数时,需要在参数名前加 & 符,表示这个值可以被函数修改。
 
    注意 输入输出参数不能有默认值,而且可变参数不能用 inout 标记。
 
    注意 输入输出参数和返回值是不一样的。上面的 swapTwoInts 函数并没有定义任何返回值,但仍然修改了 s omeInt 和 anotherInt 的值。输入输出参数是函数对函数体外产生影响的另一种方式。
 
 ------------------------------------------------------------------ */
func exchangeAToB(_ a: inout Int, _ b: inout Int) -> (A:Int, B: Int) {

    let c = a
    
    a = b
    
    b = c
    
    return (a, b)
}

var A = 10
var B = 11

let result = exchangeAToB(&A, &B)
print("A = \(result.A), B = \(result.B)")
