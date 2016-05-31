//: Playground - noun: a place where people can play

import UIKit

/**
 *  FlatMap: Optional
 */

var value:String? = "1"
var result = value.map { Int($0)}
/// "Optional(Optional(1))"
print(result)

var flatValue:String? = "1"
var flatResult = value.flatMap { Int($0)}
/// ""Optional(1)"
print(flatResult)

//链式调用
var chainedValue:String? = "1"
var chainedResult = value.flatMap { Int($0)}.map { $0 * 2 }
/// ""Optional(2)"
print(chainedResult)


/**
 *  FlatMap: SequenceType
 */
/// 压平：
var flattenValues = [[1,3,5,7],[9]]
let flattenResult = flattenValues.flatMap{ $0 }
flattenResult

/// 空值过滤
var hasNilValues:[Int?] = [1,3,5,7,9,nil]
let noNilResult = hasNilValues.flatMap{ $0 }
noNilResult