//
//  main.swift
//  Editor
//  https://www.acmicpc.net/problem/1406
//  Created by 정현우 on 2022/12/16.
//  272ms

import Foundation

var inputString = readLine()!
let count = Int(readLine()!)!

var leftStack: [Character] = []
var rightStack: [Character] = []

for char in inputString {
	leftStack.append(char)
}

for _ in 0..<count {
	let inputCommand = readLine()!
	switch inputCommand.first {
	case "L":
		if !leftStack.isEmpty {
			rightStack.append(leftStack.removeLast())
		}
	case "D":
		if !rightStack.isEmpty {
			leftStack.append(rightStack.removeLast())
		}
	case "B":
		if !leftStack.isEmpty {
			leftStack.removeLast()
		}
	case "P":
		leftStack.append(inputCommand.last!)
	default:
		print("default")
	}
	
}

print([String(leftStack), String(rightStack.reversed())].joined(separator: ""))














// 시간 초과
//var inputString = readLine()!
//let count = Int(readLine()!)!
//var currentCursor = inputString.count
//
//for _ in 0..<count {
//	let inputCommand = readLine()!
//	switch inputCommand.first {
//	case "L":
//		if currentCursor > 0 {
//			currentCursor -= 1
//		}
//	case "D":
//		if currentCursor < inputString.count {
//			currentCursor += 1
//		}
//	case "B":
//		if currentCursor > 0 {
//			let index = inputString.index(inputString.startIndex, offsetBy: currentCursor - 1)
//			inputString.remove(at: index)
//			currentCursor -= 1
//		}
//	case "P":
//		let addedString = inputCommand.last!
//		let index = inputString.index(inputString.startIndex, offsetBy: currentCursor)
//		inputString.insert(addedString, at: index)
//		currentCursor += 1
//	default:
//		print("default")
//	}
//}
//
//print(inputString)
