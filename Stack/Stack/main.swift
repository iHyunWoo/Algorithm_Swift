//
//  main.swift
//  Stack
//  https://www.acmicpc.net/problem/10828
//  Created by 정현우 on 2022/12/14.
//  52ms

import Foundation

let count = readLine().map {Int($0)!}!
var myStack: [Int] = []
var commandList: [String] = []

for _ in 0..<count {
	commandList.append(readLine()!)
}

for command in commandList {
	switch command {
	case "pop":
		if myStack.count != 0 {
			print(myStack.removeLast())
		} else {
			print("-1")
		}
	case "size":
		print(myStack.count)
	case "empty":
		if myStack.count == 0 {
			print("1")
		} else {
			print("0")
		}
	case "top":
		if myStack.count != 0 {
			print(myStack.last!)
		} else {
			print("-1")
		}
	default:
		let splitedCommand = command.components(separatedBy: " ")
		let number = Int(splitedCommand[1])!
		myStack.append(number)
	}
}

