//: Playground - noun: a place where people can play

import UIKit

                            /* 逃逸闭包 */
/* -------------------------------------------------------------------
 
    当一个闭包作为参数传到一个函数中,但是这个闭包在函数返回之后才被执行,我们称该闭包从函数中逃逸。
 
    当你定义接受闭包作为参数的函数时,你可以在参数名之前标注 @escaping ,用来指明这个闭包是允许“逃逸”出 这个函数的。
 
    一种能使闭包“逃逸”出函数的方法是,将这个闭包保存在一个函数外部定义的变量中。
 
 ------------------------------------------------------------------ */
var completeHandlers: [() -> Void] = []

// 如果你不将这个参数标记为 @escaping ,就会得到一个编译错误。
func functionWithEscapingClosure(completeHandler: @escaping () -> Void) {

    completeHandlers.append(completeHandler)
}

// 将一个闭包标记为 @escaping 意味着你必须在闭包中显式地引用 self 。

func functionWithNoEscapingClosure(closure: () -> Void) {

    closure()
}

class testClass {

    var x = 10
    
    func doSomething() {
    
        functionWithEscapingClosure {
            
            self.x = 100 // 显示引用self
        }
        
        functionWithNoEscapingClosure {
            
            x = 200 // 隐式引用self
        }
    }
}

let testA = testClass()
testA.doSomething()

print(testA.x)
completeHandlers.first?()
print(testA.x)
		