//
//  main.swift
//  Deque
//
//  Created by 정현우 on 2022/12/18.
//

import Foundation

let count = Int(readLine()!)!
var deque: [Int] = []
var resultList: [Int] = []

for _ in 0..<count {
	let inputCommand = readLine()!.split(separator: " ")
	switch inputCommand[0] {
	case "push_front":
		deque.insert(Int(inputCommand[1])!, at: 0)
	case "push_back":
		deque.append(Int(inputCommand[1])!)
	case "pop_front":
		if !deque.isEmpty {
			resultList.append(deque.removeFirst())
		} else {
			resultList.append(-1)
		}
	case "pop_back":
		if !deque.isEmpty {
			resultList.append(deque.removeLast())
		} else {
			resultList.append(-1)
		}
	case "size":
		resultList.append(deque.count)
	case "empty":
		if !deque.isEmpty {
			resultList.append(0)
		} else {
			resultList.append(1)
		}
	case "front":
		if !deque.isEmpty {
			resultList.append(deque.first!)
		} else {
			resultList.append(-1)
		}
	case "back":
		if !deque.isEmpty {
			resultList.append(deque.last!)
		} else {
			resultList.append(-1)
		}
	default:
		print("Default")
	}
	
}

for i in resultList {
	print(i)
}

