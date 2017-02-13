//: Playground - noun: a place where people can play

import UIKit

                    /* 使用Switch语句匹配枚举值 */
/* -------------------------------------------------------------------
 
    你可以使用 switch 语句匹配单个枚举值。
 
    在判断一个枚举类型的值时, switch 语句必须穷举所有情况。如 果忽略了 .West 这种情况,上面那段代码将无法通过编译,因为它没有考虑到 CompassPoint 的全部成员。强制穷 举确保了枚举成员不会被意外遗漏。
 
    当不需要匹配每个枚举成员的时候,你可以提供一个 default 分支来涵盖所有未明确处理的枚举成员。
 
 ------------------------------------------------------------------ */
enum CellType {

    case SmallSizeCell
    case MiddleSizeCell
    case BigSizeCell
}

var cellType = CellType.MiddleSizeCell

switch cellType {
    case CellType.SmallSizeCell:
        print("这是一个小的Cell")
    case CellType.MiddleSizeCell:
        print("这是一个中的Cell")
    case CellType.BigSizeCell:
        print("这是一个大的Cell")
}

cellType = .BigSizeCell

switch cellType {
case .SmallSizeCell:
    print("小")
case .MiddleSizeCell:
    print("中")
case .BigSizeCell:
    print("大")
}

cellType = .MiddleSizeCell

switch cellType {
case .BigSizeCell:
    print("大")
default:
    print("没有这种cell")
}

