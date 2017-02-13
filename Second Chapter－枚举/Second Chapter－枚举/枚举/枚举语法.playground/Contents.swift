//: Playground - noun: a place where people can play

import UIKit

                            /* 枚举语法 */
/* -------------------------------------------------------------------
 
    使用 enum 关键词来创建枚举并且把它们的整个定义放在一对大括号内:
 
    enum SomeEnumeration { 
        // 枚举定义放在这里
    }
 
 ------------------------------------------------------------------ */

// 枚举中定义的值(如 North , South , East 和 West )是这个枚举的成员值(或成员)。你使用 case 关键字来 定义一个新的枚举成员值。
// 注意：与 C 和 Objective-C 不同,Swift 的枚举成员在被创建时不会被赋予一个默认的整型值。在上面的nt 例子中, North , South , East 和 West 不会被隐式地赋值为 0 , 1 , 2 和 3 。相反,这些枚举成员本身 就是完备的值,这些值的类型是已经明确定义好的 CompassPoint 类型。
enum Direction {

    case East
    case West
    case South
    case North
}

// 多个成员值可以出现在同一行上,用逗号隔开:
enum Direction_A {

    case East, West, South, North
}

// 每个枚举定义了一个全新的类型。像 Swift 中其他类型一样,它们的名字(例如 CompassPoint 和 Planet )应该 以一个大写字母开头。给枚举类型起一个单数名字而不是复数名字,以便于读起来更加容易理解
var headDirection = Direction.East

var footDirection = Direction_A.North
// 当 directionToHead 的类型已知时,再次为其赋值可以省略枚举类型名。在使用具有显式类型的枚举值时,这种 写法让代码具有更好的可读性。
footDirection = .South

		