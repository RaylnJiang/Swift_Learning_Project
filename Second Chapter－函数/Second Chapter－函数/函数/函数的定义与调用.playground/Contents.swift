//: Playground - noun: a place where people can play

import UIKit

                        /* 函数的定义与调用 */
/* -------------------------------------------------------------------
 
    当你定义一个函数时,你可以定义一个或多个有名字和类型的值,作为函数的输入(称为参数,parameter s),也可以定义某种类型的值作为函数执行结束时的输出(称为 返回 类型,return type)。
 
    要使用一个函数时,用函数名来“调用”这个函数,并传给它 匹配的输入值(称作 实参 ,arguments)。函数的实参必须与函数参数表里参数的顺序一致。

    所有的这些信息汇总起来成为函数的定义,并以   作为前缀。指定函数返回类型时,用返回箭头   (一 个连字符后跟一个右尖括号)后跟返回类型的名称的方式来表示
 
 ------------------------------------------------------------------ */
func sayHello(person: String) -> String {

    let greetString = "Hello " + person + "!"
    
    return greetString
}

print(sayHello(person: "Iris Rainbow"))
