//: Playground - noun: a place where people can play

import UIKit

                        /* 控制转移语句 */
/* -------------------------------------------------------------------
 
    Swift有五种控制转移语句：
        continue
        break
        fallthrough
        return
        throw
 
 ------------------------------------------------------------------ */

                            /* Continue */
/* -------------------------------------------------------------------
 
    一个循环体立刻停止本次循环，重新开始下次循环
 
    Eg -> 去除元音字母和空格，重新组合
 
 ------------------------------------------------------------------ */
let sentence: String = "This is a sentence"
var outputSentence = ""
for character in sentence.characters
{
    switch character {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        outputSentence.append(character)
        print("\(outputSentence)")
    }
}

                            /* Break */
/* -------------------------------------------------------------------
 
    会立刻结束整个控制流的执行
 
    循环语句中的break：
        会立刻中断该循环体的执行，不会再产生下次循环
 
    switch语句中的break：
        会立刻中断该switch代码块的执行
 
 ------------------------------------------------------------------ */
let numberCharacter: Character = "三"
var possibleIntValue: Int?

switch numberCharacter {
case "1", "?", "一", "?":
    possibleIntValue = 1
case "2", "?", "二", "?":
    possibleIntValue = 2
case "3", "?", "三", "?":
    possibleIntValue = 3
default:
    break
}

if let myIntValue = possibleIntValue {
    print("\(myIntValue)")
} else {
    print("123")
}

                            /* 贯穿 */
/* -------------------------------------------------------------------
 
    fallthough
 
    fallthrough 关键字不会检查它下一个将会落入执行的 case 中的匹配条件。 fallthrough 简单地使代 码继续连接到下一个 case 中的代码
 
 ------------------------------------------------------------------ */
let number_A = 2
var descriptionString_A = "it is "
switch number_A {
case 2, 3, 5, 7, 11:
    descriptionString_A += "zhishu & "
    fallthrough
default:
    descriptionString_A += "zhengshu"
}

print(descriptionString_A)


                            /* 提前退出 */
/* -------------------------------------------------------------------
 
    guard
 
 ------------------------------------------------------------------ */

func greet(person: [String: String]) {

    guard let name = person["name"] else {
        
        return
    }
    
    print("hello \(name)")
    
    guard let location = person["location"] else {
        
        print("nice weather is near to you")
        
        return
    }
    
    print("nice weather is near in \(location)")
}

greet(person: ["name": "jsl"])
greet(person: ["name": "iris rainbow", "location": "fuck city"])


                        /* 检测API的可用性 */
/* -------------------------------------------------------------------
 
    仅在iOS 10及更高的系统中运行
 
 ------------------------------------------------------------------ */
if #available(iOS 10, *) {

    print("123")
    
} else {

    print("456")
}
