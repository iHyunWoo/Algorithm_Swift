//
//  main.swift
//  Josephus
//  https://www.acmicpc.net/problem/1158
//  Created by 정현우 on 2022/12/17.
//  12ms

import Foundation

let inputString = readLine()!.split(separator: " ")
let n = Int(inputString[0])!
let k = Int(inputString[1])!
var cursor = 0
var firstList: [Int] = []
var resultList: [String] = []

for i in 1...n {
	firstList.append(i)
}

for _ in 0..<n {
	cursor += k-1
	if cursor < firstList.count {
		resultList.append(String(firstList.remove(at: cursor)))
	} else {
		cursor %= firstList.count
		resultList.append(String(firstList.remove(at: cursor)))
	}
}

print("<" + resultList.joined(separator: ", ") + ">")
