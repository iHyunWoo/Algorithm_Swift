//
//  main.swift
//  StringAnalyze
//  https://www.acmicpc.net/problem/10820
//  Created by 정현우 on 2023/01/01.
//  12ms

while true {
	guard let inputString = readLine() else {break}
	var outputArr: [Int] = Array(repeating: 0, count: 4)
	for char in inputString {
		switch char.asciiValue! {
		case 97...122:  // 대문자
			outputArr[0] += 1
		case 65...90:  // 소문자
			outputArr[1] += 1
		case 48...57:  // 숫자
			outputArr[2] += 1
		case 32:  // 공백
			outputArr[3] += 1
		default:
			break
		}
	}
	print(outputArr.map {String($0)}.joined(separator: " "))
}
