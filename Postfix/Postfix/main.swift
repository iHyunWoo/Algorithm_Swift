//
//  main.swift
//  Postfix
//  https://www.acmicpc.net/problem/1918
//  Created by 정현우 on 2022/12/28.
//

//import Foundation

let inputString = readLine()!
var tempStack: [Character] = []
var resultArr: [Character] = []


func checkPriority(_ op: Character) -> Int {
	switch op {
	case "+":
		return 0
	case "-":
		return 0
	case "*" :
		return 1
	case "/":
		return 1
	case "(":
		return 2
	default:
		break
	}
	return 0
}

for char in inputString {
	if char == "(" {
		tempStack.append(char)
	} else if char == ")" {
		while tempStack.last! != "(" {
			resultArr.append(tempStack.removeLast())
		}
		tempStack.removeLast()  // 여는 괄호 제거
	} else if char == "+" || char == "-" || char == "*" || char == "/" {
		if tempStack.isEmpty {
			tempStack.append(char)
		} else {
			while !tempStack.isEmpty {
				if checkPriority(tempStack.last!) >= checkPriority(char) && tempStack.last! != "(" {
					resultArr.append(tempStack.removeLast())
				} else {
					break
				}
			}
			tempStack.append(char)
		}
	} else { // 연산자가 아닐때
		resultArr.append(char)
	}
}

while !tempStack.isEmpty {
	resultArr.append(tempStack.removeLast())
}

print(resultArr.map{String($0)}.joined(separator: ""))

