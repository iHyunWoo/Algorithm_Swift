//
//  main.swift
//  NGF
//  https://www.acmicpc.net/problem/17299
//  Created by 정현우 on 2022/12/26.
//  732ms

import Foundation

let count = Int(readLine()!)!
var inputArr: [Int] = readLine()!.split(separator: " ").map {Int($0)!}
var freqArr = Array(repeating: 0, count: 1000001)  // 1000000
var stack: [Int] = []

for num in inputArr {
	freqArr[num] += 1
}

for i in 0..<count {
	while !stack.isEmpty && freqArr[inputArr[stack.last!]] < freqArr[inputArr[i]] {
		inputArr[stack.removeLast()] = inputArr[i]
	}
	stack.append(i)
}

for i in stack {
	inputArr[i] = -1
}

print(inputArr.map {String($0)}.joined(separator: " "))

