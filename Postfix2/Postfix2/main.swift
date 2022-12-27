//
//  main.swift
//  Postfix2
//  https://www.acmicpc.net/problem/1935
//  Created by 정현우 on 2022/12/27.
//  12ms

import Foundation

let varCount = Int(readLine()!)!
let inputString = readLine()!
var varValueArr: [Double] = []
var stack: [Double] = []

for _ in 0..<varCount {
	varValueArr.append(Double(readLine()!)!)
}

for char in inputString {
	switch char {
	case "+":
		let secondNum = stack.removeLast()
		let firstNum = stack.removeLast()
		stack.append(firstNum + secondNum)
	case "-":
		let secondNum = stack.removeLast()
		let firstNum = stack.removeLast()
		stack.append(firstNum - secondNum)
	case "*":
		let secondNum = stack.removeLast()
		let firstNum = stack.removeLast()
		stack.append(firstNum * secondNum)
	case "/":
		let secondNum = stack.removeLast()
		let firstNum = stack.removeLast()
		stack.append(firstNum / secondNum)
	default:
		stack.append(varValueArr[Int(char.asciiValue!) - 65])
	}
}
print(String(format: "%.2f", stack.last!))
