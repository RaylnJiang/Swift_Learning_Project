//: Playground - noun: a place where people can play

import UIKit

                            /* 关联值 */
/* -------------------------------------------------------------------
 
    使用如下方式定义表示两种商品条形码的枚举:
 
 ------------------------------------------------------------------ */

// 定义一个名为 Barcode 的枚举类型,它的一个成员值是具有 (Int,Int,Int,Int) 类型关联值的 UPCA ,另一 个成员值是具有 String 类型关联值的 QRCode 。
enum Barcode {

    case UPCA(Int, Int, Int, Int) // 条形码
    case QRcode(String) // 二维码
}

let productBarcode = Barcode.UPCA(8, 85909, 51226, 3)
var userQRcode = Barcode.QRcode("JRayln")
userQRcode = .QRcode("IrisRainbow")


