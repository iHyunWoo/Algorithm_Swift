//
//  main.swift
//  RazerCutting
//  https://www.acmicpc.net/problem/10799
//  Created by 정현우 on 2022/12/25.
//  20ms

import Foundation

let inputString = readLine()!
var currentStick = 0
var flag = false
var stack: [Character] = []

for char in inputString {
	if char == "(" {
		flag = true
		stack.append(char)
	} else if char == ")" && flag { // razer일때
		flag = false
		stack.removeLast()
		currentStick += stack.count
	} else if char == ")" && !flag { // stick의 끝일때
		stack.removeLast()
		currentStick += 1 // original stick ++
	}
}
print(currentStick)








// 시간 초과
//let inputString = readLine()!
//var flag = false
//var razerIndexArr: [Int] = []
//var stickIndexArr: [(Int, Int)] = []
//var count = 0
//
//var stack: [Int] = []
//var resultCount = 0
//
//for char in inputString {
//	if char == "(" {
//		flag = true
//		stack.append(count)
//	} else if char == ")" && flag {
//		stack.removeLast()
//		razerIndexArr.append(count)
//		flag = false
//	} else if char == ")" && !flag {
//		stickIndexArr.append((stack.removeLast(), count))
//	}
//
//	count += 1
//}
//
//resultCount += stickIndexArr.count
//
//for razerIndex in razerIndexArr {
//	for stick in stickIndexArr {
//		if razerIndex > stick.0 && razerIndex < stick.1 {
//			resultCount += 1
//		}
//	}
//}
//
//print(resultCount)
