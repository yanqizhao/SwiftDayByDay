//
//  main.swift
//  SwiftDay-1
//
//  Created by zhaoyq on 2016/12/6.
//  Copyright © 2016年 zhaoyq. All rights reserved.
//

import Foundation
/*
 let var的使用
 :类型 声明变量或常量的类型
 \() 将数值转换为字符串
 [String]() 声明数组
 [String, Int]() 声明字典
 if for的使用
 : String? 声明时显式确定类型，可为空
 
 */
/*
print("Hello, World!")

var myVariable = 22
let myConst = 14
// myConst = 20 let声明的常量只能赋值一次

var count: Float = 2 // 声明时没有赋值或者赋值没有体现出类型时要显式声明
print(count)

// 值永远不会被隐式转换类型，需要转换时要显式转换
let label = "The width is"
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

// \()可以将数值转换为字符串
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(fruitSummary)

// 数组
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
print(shoppingList)
shoppingList[1] = "bottle of water"
print(shoppingList)

// 字典
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
print(occupations)
occupations["Jayne"] = "Public Relations"
print(occupations)

shoppingList = []
occupations = [:]
print(shoppingList)
print(occupations)

let emptyArray = [String]()
let emptyDictionary = [String: Float]()
print(emptyArray)
print(emptyDictionary)

// 在if语句中，条件必须是一个布尔表达式——这意味着像if score { ... }这样的代码将报错，而不会隐形地与 0 做对比。
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
 */

/*
var optionalStr: String? = "str"
print(optionalStr == nil)

var optionalName: String? = "John"
// optionalName = nil
var greeting = "Hello !"
if let name = optionalName {
//    greeting = "Hello, \(name)"
    greeting = "Hello, " + name
}
print(greeting)

let nickName: String? = "Mike"
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
//let informalGreeting = "Hi \(nickName)" + fullName

print(informalGreeting)
*/

/*
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
*/

/*
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
//var largestKind: String? = nil
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
//print(largestKind ?? "")
print(largestKind)
print(largest)

var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
// 与do类似
repeat {
    m = m * 2
} while m < 100
print(m)

var total = 0
var total2 = 0

for i in 1..<4 {
    total += i
}
for j in 1...4 {
    total2 += j
}

print(total)
print(total2)
 */
