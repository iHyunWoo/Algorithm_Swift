//
//  main.swift
//  AlphabetCount
//  https://www.acmicpc.net/problem/10808
//  Created by 정현우 on 2022/12/30.
//  12ms

let inputString = readLine()!
var countArr = Array(repeating: 0, count: 26)

for char in inputString {
	countArr[Int(char.asciiValue!) - 97] += 1
}
print(countArr.map {String($0)}.joined(separator: " "))

