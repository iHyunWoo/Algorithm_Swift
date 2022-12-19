//
//  main.swift
//  ReverseString2
//  https://www.acmicpc.net/problem/17413
//  Created by 정현우 on 2022/12/18.
//  36ms

import Foundation

let inputString = readLine()!

var resultString: String = ""
var tempString: String = ""
var isInTag: Bool = false

for char in inputString {
	switch char {
	case "<":
		if !tempString.isEmpty {
			resultString.append(String(tempString.reversed()))
			tempString = ""
		}
		resultString.append(char)
		isInTag = true
	case ">":
		isInTag = false
		resultString.append(char)
	case " ":
		if isInTag {
			resultString.append(char)
		} else {
			resultString.append(String(tempString.reversed()))
			resultString.append(char)
			tempString = ""
		}
	default:
		if isInTag {
			resultString.append(char)
		} else {
			tempString.append(char)
		}
	}
}

if !tempString.isEmpty {
	resultString.append(String(tempString.reversed()))
	tempString.removeAll()
}

print(resultString)
