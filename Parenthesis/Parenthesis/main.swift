//
//  main.swift
//  Parenthesis
//  https://www.acmicpc.net/problem/9012
//  Created by 정현우 on 2022/12/15.
//  24ms

import Foundation

let count = readLine().map {Int($0)!}!
var myStack: [Character] = []
var resultList: [String] = []
var errorFlag: Bool = false

for _ in 0..<count {
	let inputString = readLine()!
	for char in inputString {
		if char == "(" {
			myStack.append(char)
		} else {
			if !myStack.isEmpty {
				myStack.removeLast()
			} else {
				errorFlag = true
				break
			}
		}
	}
	if myStack.isEmpty && !errorFlag {
		resultList.append("YES")
	} else {
		resultList.append("NO")
	}
	myStack.removeAll()
	errorFlag = false
}

for i in resultList {
	print(i)
}

