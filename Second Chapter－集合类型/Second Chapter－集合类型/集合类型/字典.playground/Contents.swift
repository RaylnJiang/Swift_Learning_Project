//: Playground - noun: a place where people can play

import UIKit

                            /* 字典 */
/* -------------------------------------------------------------------
 
 字典是一个存储多个相同类型的值的容器。
 每个值(value)都关联唯一的键(key)，键作为字典中这个值数据的标识符。
 和数组中的数据项不同，字典中的数据项并没有具体的顺序。
 
 ------------------------------------------------------------------ */


                            /* 字典类型快捷语法 */
/* -------------------------------------------------------------------
 
 Swift的字典使用Dictionary<Key, Value>定义，其中Key是字典中键的数据类型，
 Value是字典中对应于这些键所存储值的数据类型。
 
 注意：
    一个字典的Key类型必须遵循Hashable协议，就像Set的值类型。
 
 可以通过[key: Value]这样快捷的形式去创建一个字典类型。虽然这两种形式功能上相同，但是
 后者是首选。
 
 ------------------------------------------------------------------ */


                            /* 创建一个空字典 */
/* -------------------------------------------------------------------
 
 可以使用像数组一样使用构造语法创建一个拥有确定类型的空字典。
 
 ------------------------------------------------------------------ */
var nameDict: [Int: String] = [1: "张三", 2: "李四", 3: "王五"]


                            /* 用字典字面量创建字典 */
/* -------------------------------------------------------------------
 
 可以使用字典字面量来构造字典。字典字面量是一种将一个或多个键值对写作Dictionary集合
 的快捷途径。
 
 一个键值对是一个key和一个value的结合体。在字典字面量中，每一个键值对的键和值都由冒
 号分割。这些键值对构成一个列表，其中这些键值对由方括号包含、冒号分割。
 [key1: value1, key2: value2, key3: value3]
 
 ------------------------------------------------------------------ */
var schoolDict: Dictionary<String, String> = ["BJ": "qinghuadaxue ", "SH": "tongjidaxue"]

                            /* 访问和修改字典 */
/* -------------------------------------------------------------------
 
 可以通过访问字典的方法和属性来访问和修改字典，或者通过使用下标语法。
 
 可以使用布尔属性isEmpty来快捷的检查字典的count属性是否等于0。
 
 可以使用下标语法来添加新的数据项。
 
 可以使用下标语法来改变特定键对应的值。
 
 可以使用字典的updateValue(_:forKey:)方法设置或者更新特定键对应的值。
 
 可以使用下标语法来通过给某个键的对应值赋值nil，来从字典里移除这个键值对。
 
 可以使用removeValueForKey(_:)方法在字典中移除键值对
 
 ------------------------------------------------------------------ */
print("schoolDict's count = \(schoolDict.count)")

if !schoolDict.isEmpty {

    print("有学校可以选择")
    
} else {

    print("落选了")
}

schoolDict["GZ"] = "zhongshandaxue"
print(schoolDict)

schoolDict["BJ"] = "beijingdaxue"
print(schoolDict)

if let oldValue = schoolDict.updateValue("guangzhoudaxue", forKey: "GZ") {
    print("oldValue is \(oldValue)")
} else {
    
    print("oldValue is not exit")
}

if let newValue = schoolDict["GZ"] {

    print("newValue is \(newValue)")
} else {

    print("newValue is not exit")
}

schoolDict["GZ"] = nil
print("\(schoolDict)")

schoolDict.removeValueForKey("SH")
print("\(schoolDict)")


                            /* 字典遍历 */
/* -------------------------------------------------------------------
 
 可以使用for-in循环遍历某个字典中的键值对。每一个字典中的数据项都以(key, value)元组形式返回，并且我们可以使用临时常量或者变量来分解这些元组。
 
 可以通过keys或者values属性来遍历字典中的键或值。
 
 可以使用某个字典的键集合或者值集合来作为某个接受Array实例的API的参数，可以直接使用keys或者values属性构造一个新数组。
 
 Swift字典类型是无序集合类型，为了以特定的顺序遍历字典的键或值，可以对字典的keys或values属性用sort()方法。
 
 ------------------------------------------------------------------ */

var studentDict: Dictionary<String, String> = ["ZS": "张三", "LS": "李四", "WW": "王五"]

for (shortName, realName) in studentDict {

    print("shortName is \(shortName), realName is \(realName)")
}

for nameKey in studentDict.keys {

    print("nameKey is \(nameKey)")
}

for nameValue in studentDict.values {

    print("nameValue is \(nameValue)")
}

studentDict.keys.sort()







