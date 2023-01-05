//
//  main.swift
//  PrimeNumber
//  https://www.acmicpc.net/problem/1929 / 에라토스테네스의 체 알고리즘
//  Created by 정현우 on 2023/01/05.
//  88ms

let inputNum: [Int] = readLine()!.split(separator: " ").map {Int($0)!}
var isPrimeNum: [Bool] = Array(repeating: true, count: inputNum[1]+1)
isPrimeNum[1] = false

for i in 2...inputNum[1] {
	if !isPrimeNum[i] {
		continue
	}
	for j in stride(from: 2*i, through: inputNum[1], by: i) {
		isPrimeNum[j] = false
	}
}

for i in inputNum[0]...inputNum[1] {
	if isPrimeNum[i] {
		print(i)
	}
}






// 시간 초과
//let inputNum: [Int] = readLine()!.split(separator: " ").map {Int($0)!}
//
//for num in inputNum[0]...inputNum[1] {
//	if isPrimeNumber(num: num) {
//		print(num)
//	}
//}
//
//func isPrimeNumber(num: Int) -> Bool {
//	for i in 2..<num {
//		if num % i == 0 {
//			return false
//		}
//	}
//	return true
//}
