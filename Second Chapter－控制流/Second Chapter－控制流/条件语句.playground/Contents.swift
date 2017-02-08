//: Playground - noun: a place where people can play

import UIKit

                            /* 条件语句 */
/* -------------------------------------------------------------------
 
    Swift提供两种类型条件语句：
        if 和 switch，通常条件较为简单时，使用if语句。而switch语句更适合条件
        更为复杂的、有更多排列组合的时候。并且switch在需要用到模式匹配的情况下
        会更有用。
 ------------------------------------------------------------------ */

                            /* If */
/* -------------------------------------------------------------------
 
    if语句最简单的形式就是只包含一个条件，只有该条件为true时，才执行相关代码。
 
 ------------------------------------------------------------------ */
var todayTemperature = -10
if todayTemperature <= 0 {
    print("today's temperature is \(todayTemperature), it's very code")
} else {

    print("suck my dick")
}

var isLong = true
if !isLong {

    print("fuck off")
} else {

    print("suole my penis")
}


                            /* Switch */
/* -------------------------------------------------------------------
 
    switch语句会尝试把某个值与若干模式进行匹配，根据第一个匹配成功的模式，
    switch语句会执行对应的代码
 
    switch语句最简单的形式就是把某个值与一个或若干个相同类型的值做比较
 
    switch some value to consider {
        case value 1:
            respond to value 1
        case value 2,value 3:
            respond to value 2 or 3
        default:
            otherwise, do something else
    }
 
    switch语句由多个case构成，每个由case关键字开始。为了匹配某些特定的值，switch提供了几种方法进行更复杂的模式匹配。
 
    与 if 语句类似,每一个 case 都是代码执行的一条分支。 switch 语句会决定哪一条分支应该被执行,这个流程 被称作根据给定的值切换(switching)。
 
 ------------------------------------------------------------------ */

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("this is the first letter in alphabet")
case "z":
    print("this is the last letter in alphabet")
default:
    print("shut up the fuck")
}

// 复合匹配
let someCharacter_A: Character = "a"
switch someCharacter_A {
case "a", "A":
    print("this is a or A")
default:
    print("not exist a or A")
}

// 区间匹配
let score: Int = 90
switch score {
case 0..<60:
    print("不及格")
case 60..<80:
    print("良好")
case 80..<90:
    print("优秀")
case 90...100:
    print("爆炸")
default:
    print("作弊")
}

// 元组匹配
let somePoint = (0, 1)
switch somePoint {
case (0, 0):
    print("原点")
    fallthrough
case (_, 0):
    print("X轴方向")
    fallthrough
case (0, _):
    print("Y轴方向")
    fallthrough
case (-10...10, -10...10):
    print("在正方形内部")
default:
    print("在正方形外部")
}

// 值绑定匹配
let somePoint_A = (1, 2)
switch somePoint_A {
case (let x, 0):
    print("x轴方向的值为\(x)")
case (0, let y):
    print("y轴方向的值为\(y)")
case let (x, y):
    print("这是一位未知点(\(x), \(y))")
default:
    print("false")
}

// where匹配
/*
    使用where来判断额外的匹配
 */
let somePoint_B = (2, -2)
switch somePoint_B {
case let (x, y) where x == y:
    print("(\(x), \(y))在x==y线上")
case let (x, y) where x == -y:
    print("(\(x), \(y))在x==!y线上")
case let(x, y):
    print("(\(x), \(y))是一个随意点")
}



