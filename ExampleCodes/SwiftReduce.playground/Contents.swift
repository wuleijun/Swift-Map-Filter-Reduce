//: Playground - noun: a place where people can play

import UIKit

/**
 *  Reduce
 */

var values = [1,3,5]
let initialResult = 0
var reduceResult = values.reduce(initialResult, combine: { (tempResult, element) -> Int in
    return tempResult + element
})
print(reduceResult)
//9



func combine(tempResult: Int, element: Int) -> Int  {
    return tempResult + element
}
reduceResult = combine(combine(combine(initialResult, element: 1), element: 3), element: 5)
print(reduceResult)
//9