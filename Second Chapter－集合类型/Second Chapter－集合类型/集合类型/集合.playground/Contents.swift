//: Playground - noun: a place where people can play

import UIKit

                        /* 集合 */
/* -------------------------------------------------------------------
 
 集合（Set）用来存储相同类型并且没有确定顺序的值。
 
 当集合元素顺序不重要时或希望确保每个元素只出现一次时可以使用集合而不是数组。
 
 ------------------------------------------------------------------ */


                        /* 集合类型的哈希值 */
/* -------------------------------------------------------------------
 
 一个类型为了存储在集合中，该类型必须是可哈希化的，也就是说，该类型必须提供一个方法
 来计算它的哈希值。
 
 一个哈希值时Int类型的，相等的对象哈希值必须相同：a == b，
 因此a.hashValue == b.hashValue
 
 Swift所有基本数据类型（String、Int、Double、Bool）默认都是可以哈希化的，
 可以作为集合的值的类型或字典的键的类型。
 
 没有关联值的枚举成员值默认也是可以哈希化的（在枚举处有讲）
 
 ------------------------------------------------------------------ */


                        /* 集合类型语法 */
/* -------------------------------------------------------------------
 
 Swift中的Set类型被写为Set<Element>，这里的Element表示Set中允许存储的类型，
 和数组不同的是，集合没有等价的简化形式。
 
 ------------------------------------------------------------------ */


                        /* 创建和构造一个空的集合 */
/* -------------------------------------------------------------------
 
 可以通过构造器语法创建一个特定类型的空集合。
 
 注意：
    通过构造器，这里的letters变量的类型被推断为Set<Character>
 
 可以通过一个空的数组字面量创建一个空的Set
 
 ------------------------------------------------------------------ */
var letters = Set<Character>()
print("letters' characters count = \(letters.count)")

letters.insert("a")
print("\(letters)")

letters = []


                        /* 用数组字面量创建一个集合 */
/* -------------------------------------------------------------------
 
 可以通过数组字面量来构造集合，并可以使用简化形式写一个或多个值作为集合元素。
 
 如果你想使用一个数组字面量构造一个Set并且该数组字面量中的所有元素类型相同，
 那么你无需写出Set的具体类型。
 
 ------------------------------------------------------------------ */
var homeSet: Set<String> = ["Jsl", "lj"]

var homeSet_B: Set = ["jsl", "lj", "son", "daughter"]


                        /* 访问和修改一个集合 */
/* -------------------------------------------------------------------
 
 可以通过Set的属性和方法来修改一个Set。
 
 可以使用其只读属性count，找出一个Set中元素的数量。
 
 可以使用布尔属性isEmpty作为一个缩写形式去检查count属性是否为0。
 
 可以使用Set的insert(_:)方法来添加一个新元素。
 
 可以通过Set的remove(_:)方法删除一个元素，如果该值是该Set的一个元素则删除该元素
 并且返回被删除的元素的值，否则如果该Set不包含该值，则返回nil。
 
 可以通过removeAll()方法删除Set中的所有元素。
 
 可以使用contains(_:)方法检查Set中是否包含一个特定的值。
 
 ------------------------------------------------------------------ */
print("homeSet_B's members count = \(homeSet_B.count)")

if homeSet_B.isEmpty {

    print("家里没人")
    
} else {

    print("家里有人")
}

homeSet_B.insert("pet Dog")
print("\(homeSet_B)")

homeSet_B.removeAll()
print(homeSet_B)

var homeSet_C: Set<String> = ["father", "mother", "me"]
if homeSet_C.contains("me") {

    print("我在家")
    
} else {

    print("我不在家")
}


                        /* 遍历一个集合 */
/* -------------------------------------------------------------------
 
 可以在for-in循环中遍历一个Set中的所有值。
 
 ------------------------------------------------------------------ */
var fruiteSet: Set = ["apple", "banana", "orange"]
for fruite in fruiteSet {

    print("fruite = \(fruite)")
}


                        /* 集合操作 */
/* -------------------------------------------------------------------
 
 可以高效的完成Set的一些基本操作，比如把两个集合组合到一起，判断两个集合共有元素，
 或者判断两个集合是否全包含、部分包含或者不相交。
 
 基本集合操作：
    使用intersect(_:)方法根据两个集合中都包含的值创建一个新的集合。
    使用exclusiveOr(_:)方法根据在一个集合中但不在两个集合中的值创建一个新集合。
    使用union(_:)方法根据两个集合的值创建一个新的集合。
    使用subtract(_:)方法根据不在该集合中的值创建一个新的集合。
 
 集合成员关系和相等：
    使用“是否相等”运算符（==）来判断两个集合是否包含全部相同的值。
    使用isSubsetOf:(_:)方法来判断一个集合中的值是否也被包含在另一个集合中。
    使用isSupersetOf(_:)方法来判断一个集合中包含另一个集合中所有的值。
    使用isStrictSubsetOf(_:)或者isStrictSupersetOf(_:)方法来判断一个集合
    是否是另外一个集合的子集合或者父集合并且两个集合并不相等。   
    使用isDisjoinWith(_:)方法来判断两个集合是否不含有相同的值(是否没有交集)。
 
 ------------------------------------------------------------------ */
let jsSet: Set = [1, 3, 5, 7, 9]
let osSet: Set = [2, 4, 6, 8, 10]
let anotherSet: Set = [2, 3, 5, 7]

let jiaojiSet: Set = jsSet.intersect(anotherSet)
let exclusiveSet: Set = osSet.exclusiveOr(anotherSet)
let unionSet = jsSet.union(osSet).sort()
let jsSubtractSet = jsSet.subtract(anotherSet)
let anotherSubtractSet = anotherSet.subtract(jsSet)

let numberSet_A: Set = [1, 2, 3, 4, 5]
let numberSet_B: Set = [1, 2, 3]
let numberSet_B1: Set = [1, 2, 3]
let numberSet_C: Set = [4, 5, 6, 7, 8]
numberSet_B.isSubsetOf(numberSet_A)
numberSet_A.isSupersetOf(numberSet_B)
numberSet_B.isStrictSubsetOf(numberSet_A)
numberSet_A.isStrictSupersetOf(numberSet_B1)
numberSet_A.isDisjointWith(numberSet_C)
numberSet_B.isDisjointWith(numberSet_C)




























