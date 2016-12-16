//
//  main.swift
//  SwiftDay-1
//
//  Created by zhaoyq on 2016/12/6.
//  Copyright © 2016年 zhaoyq. All rights reserved.
//

// http://wiki.jikexueyuan.com/project/swift/

import Foundation
/*
 1. let var的使用
 2. :类型 声明变量或常量的类型
 3. \() 将数值转换为字符串
 4. [String]() 声明数组
 5. [String, Int]() 声明字典
 6. if for的使用
 7. : String? 声明时显式确定类型，可为空
 8. ?? 类似? :三目运算符 默认值
 9. swith 不需要break 不仅支持数值型
 10. for in
 11. while repeat
 12. ..<与...
 13. 函数与闭包 闭包可以作为函数的参数、返回值使用 函数可以嵌套
 14. 元祖 函数的返回值可以是元祖
 */

/*
print("Hello, World!")
*/

/*
var myVariable = 22
let myConst = 14
// myConst = 20 // let声明的常量只能赋值一次

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
*/

/*
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
*/

/*
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
print(optionalStr == nil) // false

var optionalName: String? = "John"
// optionalName = nil
var greeting = "Hello !"
if let name = optionalName {
//    greeting = "Hello, \(name)"
    greeting = "Hello, " + name
}
print(greeting)

var nickName: String? = "Mike"
// nickName = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
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
var largestKind: String? = nil
// var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print(largestKind ?? "")
// print(largestKind)
print(largest)
*/
/*
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

/*
// 使用func来声明一个函数，使用名字和参数来调用函数。使用->来指定函数返回值的类型。
func greet(one person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
//print(greet(person: "Bob", day: "Tuesday"))
print(greet(one: "Amy", on: "Friday"))

// 默认情况下，函数使用它们的参数名称作为它们参数的标签，在参数名称前可以自定义参数标签，或者使用 _ 表示不使用参数标签。
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))
*/

/*
// 使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores:[5, 3, 100, 3, 9])
print(statistics.min)
print(statistics.1)
 */

/*
// 函数可以带有可变个数的参数，这些参数在函数内表现为数组的形式：
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
print(sumOf())
print(sumOf(numbers: 42, 597, 12))
*/

/*
// 函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数。

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())
 */

/*
// ((Int) -> String) 这里Int是指嵌套中内部函数参数的类型，String是指嵌套中内部函数返回值的类型
func makeIncrementer() -> ((Int) -> String) {
    func addOne(number: Int) -> String {
        return "1 \(number)"
    }
    return addOne
}
var increment = makeIncrementer()
// 注意这里参数的传递，makeIncrementer是没有参数的，把它付给一个变量increment，因为它的返回值是一个函数addOne，再通过increment将内部函数的参数传递进去
print(increment(7))
*/

/*
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))
 
// 函数实际上是一种特殊的闭包:它是一段能之后被调取的代码。闭包中的代码能访问闭包所建作用域中能得到的变量和函数，即使闭包是在一个不同的作用域被执行的 - 你已经在嵌套函数例子中所看到。你可以使用{}来创建一个匿名闭包。使用in将参数和返回值类型声明与闭包函数体进行分离。
print(numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
}))

// 有很多种创建更简洁的闭包的方法。如果一个闭包的类型已知，比如作为一个回调函数，你可以忽略参数的类型和返回值。单个语句闭包会把它语句的值当做结果返回。
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

// 你可以通过参数位置而不是参数名字来引用参数——这个方法在非常短的闭包中非常有用。当一个闭包作为最后一个参数传给一个函数的时候，它可以直接跟在括号后面。当一个闭包是传给函数的唯一参数，你可以完全忽略括号。
let sortedNumbers = numbers.sort { $0 > $1 }
print(sortedNumbers)
*/
