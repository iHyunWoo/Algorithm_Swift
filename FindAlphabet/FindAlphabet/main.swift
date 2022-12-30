//
//  main.swift
//  FindAlphabet
//  https://www.acmicpc.net/problem/10809
//  Created by 정현우 on 2022/12/30.
//  12ms

let inputString = readLine()!
var resultArr = Array(repeating: -1, count: 26)
var count = 0


for char in inputString {
	let asciiIndex = Int(char.asciiValue!) - 97
	if resultArr[asciiIndex] == -1 {
		resultArr[asciiIndex] = count
	}
	
	count += 1
}

print(resultArr.map {String($0)}.joined(separator: " "))

