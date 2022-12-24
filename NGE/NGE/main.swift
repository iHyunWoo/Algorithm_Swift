//
//  main.swift
//  NGE
//  https://www.acmicpc.net/problem/17298
//  Created by 정현우 on 2022/12/24.
//  664ms

import Foundation

let count = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map {Int($0)!}
var stack: [Int] = []

for i in 0..<count {
	while !stack.isEmpty && arr[stack.last!] < arr[i] {
		arr[stack.removeLast()] = arr[i]
	}
	stack.append(i)
}
for index in stack {
	arr[index] = -1
}

print(arr.map {String($0)}.joined(separator: " "))



// 시간 초과 2
//var count = Int(readLine()!)!
//var inputArr = readLine()!.split(separator: " ").map {Int($0)!}
//inputArr = inputArr.reversed()
//var resultArr: [Int] = []
//var flag = false
//
//while true {
//	flag = false
//	let tmp = inputArr.removeLast()
//	count -= 1
//	if count == 0 {
//		resultArr.append(-1)
//		break
//	}
//	for i in 0..<count {
//		let index = count - i - 1
//		if inputArr[index] > tmp {
//			resultArr.append(inputArr[index])
//			flag = true
//			break
//		}
//	}
//	if !flag {
//		resultArr.append(-1)
//	}
//}
//print(resultArr.map {String($0)}.joined(separator: " "))



// 시간 초과
//let count = Int(readLine()!)!
//let inputArr = readLine()!.split(separator: " ").map {Int($0)!}
//var resultArr: [Int] = []
//var flag: Bool = false
//
//for i in 0..<count {
//	flag = false
//	let tmp = inputArr[i]
//	for j in i+1 ..< count {
//		if inputArr[j] > tmp {
//			resultArr.append(inputArr[j])
//			flag = true
//			break
//		}
//	}
//	if !flag {
//		resultArr.append(-1)
//	}
//}
//print(resultArr.map {String($0)}.joined(separator: " "))
