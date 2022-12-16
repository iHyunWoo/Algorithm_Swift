//
//  main.swift
//  Queue
//  https://www.acmicpc.net/problem/10845
//  Created by 정현우 on 2022/12/16.
//  28ms

import Foundation

let count = Int(readLine()!)!
var queue: [Int] = []
var resultList: [Int] = []

for _ in 0..<count {
	let inputCommand = readLine()!.split(separator: " ")
	switch inputCommand[0] {
	case "push":
		let num = Int(inputCommand[1])!
		queue.append(num)
	case "pop":
		if queue.isEmpty {
			resultList.append(-1)
		} else {
			resultList.append(queue.removeFirst())
		}
		
	case "size":
		resultList.append(queue.count)
	case "empty":
		if queue.isEmpty {
			resultList.append(1)
		} else {
			resultList.append(0)
		}
	case "front":
		if queue.isEmpty {
			resultList.append(-1)
		} else {
			resultList.append(queue.first!)
		}
	case "back":
		if queue.isEmpty {
			resultList.append(-1)
		} else {
			resultList.append(queue.last!)
		}
	default:
		print("default")
	}
	
}

for i in resultList {
	print(i)
}

