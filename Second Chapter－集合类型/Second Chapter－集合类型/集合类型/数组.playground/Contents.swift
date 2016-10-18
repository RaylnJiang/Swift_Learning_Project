//: Playground - noun: a place where people can play

import UIKit

                        /* 数组的简单语法 */
/* -------------------------------------------------------------------
 
 写Swift数组应该遵循像Array<Element>这样的形式，其中Element是这个数组中唯依允许
 存在的数据类型。也可以使用像[Element]这样简单的语法。推荐写较短的那种写法。
 
 ------------------------------------------------------------------ */


                        /* 创建一个空数组 */
/* -------------------------------------------------------------------
 
 我们可以使用构造语法来创建一个由特定数据类型构成的空数组
 
 注意：通过构造函数的类型，someInts的值类型被推断为[Int]
 
 ------------------------------------------------------------------ */
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items")
someInts.append(99)
print("someInts items count = \(someInts.count)")
someInts = []
print("someInts items count = \(someInts.count)")


                        /* 创建一个带有默认值的数组 */
/* -------------------------------------------------------------------
 
 Swift中的Array类型还提供一个可以创建特定大小并且所有数据都被默认的构造方法。
 我们可以把准备加入新数组的数据项数量（count）和适当类型的初始值（repeatValue）
 传入数组构造函数。
 
 ------------------------------------------------------------------ */
var threeDoubles = [Double](count: 3, repeatedValue: 1.3)


                        /* 通过两个数组相加创建一个数组 */
/* -------------------------------------------------------------------
 
 我们可以使用加法操作符（＋）来组合两种已存在的相同类型数组。新数组的数据类型会被从
 两个数组的数据类型中推断出来。
 
 ------------------------------------------------------------------ */
var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.1)
let sixDoubles = threeDoubles + anotherThreeDoubles
print("sixDoubles = \(sixDoubles)") // 精度问题？？？


                        /* 用字面量构造数组 */
/* -------------------------------------------------------------------
 
 使用字面量来进行数组构造，这是一种用一个或多个数值构造数组的简单方法。
 字面量是一系列由逗号分割并由方括号包含的数值：
 [value 1, value 2, value 3]
 
 由于Swift的类型推断机制，当我们用字面量构造只拥有相同类型值数组的时候，我们不必把
 数组的类型定义清楚。
 
 ------------------------------------------------------------------ */
var shopList: [String] = ["apple", "pear", "orange"]
var anotherShopList = ["fuckBoy", "shitGirl"]


                        /* 访问和修改数组 */
/* -------------------------------------------------------------------
 
 可以通过数组的方法和属性来访问和修改数组，或者使用下标语法。
 
 可以使用数组的只读属性count来获取数组种的数据项数量。
 
 可以使用布尔值属性isEmpty作为检察count属性的值是否为0的捷径。
 
 可以使用append(_:)方法在数组后面添加新的数据项。
 
 可以使用加法赋值运算符（+=）也可以直接在数组后面添加一个或多个拥有相同类型的
 数据项。
 
 可以使用下标语法来获取数组中的数据项，把我们需要的数据项的索引值放在直接放在数组
 名称的方括号中。
 
 可以使用下标来改变某个已有索引值对应的数据值
 
 可以使用下标一次改变一系列数据值，即使新数据和原来数据的数量是不一样的。
 
 调用数组的insert(_:atIndex:)方法来在某个具体索引值之前添加数据项。
 
 可以使用removeAtIndex(_:)方法来移除数组中的某一项
 
 注意：
    如果我们试着对索引越界的数据进行检索或者设置新值的操作，会引发一个运行期错误。
    我们可以使用索引值和数组的count属性进行比较来使用某个索引之前先检查是否有效。
    出了当count等于0时，最大索引值时count-1，因为数组都是零起索引。
 
 ------------------------------------------------------------------ */
var studentList = ["JRayln", "Lj"]
print("There are \(studentList.count) students in our class")

if studentList.isEmpty {

    print("Nobody in our class")
    
} else {

    print("Fuck those guys")
}

studentList.append("Little Lj(our daughter)")

studentList += ["Little Rayln(our son)"]

let firstObject = studentList[1]

studentList[3] = "our second daughter"
print("\(studentList)")

studentList[0...3] = ["jiangshulun", "lijia", "daughter"]
print("\(studentList)")

studentList.insert("son", atIndex: 3)
print("\(studentList)")

studentList.removeAtIndex(3)
print("\(studentList)")

studentList.removeLast()
print("\(studentList)")


                        /* 数组的遍历 */
/* -------------------------------------------------------------------
 
 可以使用for-in循环来遍历所有数组中的数据项
 
 如果需要每个数据项的值和索引值，可以使用enumerate()方法来进行数组遍历。
 enumerate()返回一个由每一个数据项索引值和数据值组成的元组。我们可以把这个元组分解
 成临时常量或变量来进行遍历。
 
 ------------------------------------------------------------------ */
var homeList = ["father", "mother", "son", "daughter"]
for member in homeList {

    print("\(member)")
}

for (index, value) in homeList.enumerate() {

    print("第\(index + 1)项 = \(value)")
}

















        