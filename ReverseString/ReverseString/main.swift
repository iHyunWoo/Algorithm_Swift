//
//  main.swift
//  ReverseString
//  https://www.acmicpc.net/problem/9093
//  Created by 정현우 on 2022/12/14.
//  416ms

import Foundation

let count = readLine().map {Int($0)!}!
var resultList: [String] = []

for _ in 0..<count {
	let string = readLine()!
	let dividedBySpace = string.components(separatedBy: " ")
	var resultString: [String] = []
	for word in dividedBySpace {
		resultString.append(String(word.reversed()))
	}
	resultList.append(resultString.joined(separator: " "))
}
for i in resultList {
	print(i)
}
