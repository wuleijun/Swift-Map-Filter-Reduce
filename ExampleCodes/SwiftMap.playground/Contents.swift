//: Playground - noun: a place where people can play

import UIKit

print("=======Map：Optional=======")
/**
 *  Map：Optional
 */

//原来类型： Int?,返回值类型：String?
let value:Int? = 1
var result = value.map { String("result = \($0)") }
/// "Optional("result = 1")"
print(result)


let valueNil:Int? = nil
var resultNil = valueNil.map { String("result = \($0)") }
/// "nil"
print(resultNil)




print("=======Map：SequenceType=======")
/**
 *  Map：SequenceType
 */
let values = [1, 3, 5, 7]
var results = values.map { $0 * 2 }
//"[2, 6, 10, 14]"
results

//改为一行
results = values.map ({ (element) -> Int in return element * 2 })
results

//系统可推断出返回值与参数类型
results = values.map ({ element  in return element * 2 })
results

//由于函数体只有 element * 2这一表达式，可省略return
results = values.map ({ element  in element * 2 })
results


//参数缩写
results = values.map ({ $0 * 2 })
results

//尾随闭包
results = values.map (){ $0 * 2 }
results


//函数体只有一个闭包作为参数，省略（）
results = values.map { $0 * 2 }
results
