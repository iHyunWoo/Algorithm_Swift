//
//  main.swift
//  IntegerStack
//  https://www.acmicpc.net/problem/1874
//  Created by 정현우 on 2022/12/15.
//  172ms

import Foundation

let count = Int(readLine()!)!
var errorFlag = false
var index = 1
var myStack: [Character] = []
var numStack: [Int] = []

for _ in 0..<count {
	let inputNumber = Int(readLine()!)!
	while index <= inputNumber {
		myStack.append("+")
		numStack.append(index)
		index += 1
	}
	if numStack.last == inputNumber {
		myStack.append("-")
		numStack.removeLast()
	} else {
		errorFlag = true
	}
	
}

if errorFlag {
	print("NO")
} else {
	for i in myStack {
		print(i)
	}
}
