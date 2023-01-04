//
//  main.swift
//  GCD&LCM
//  https://www.acmicpc.net/problem/2609
//  Created by 정현우 on 2023/01/04.
//  8ms

let inputNumbers: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
var gcd: Int = 1
var lcm: Int = max(inputNumbers[0], inputNumbers[1])

// 최대공약수(GCD)
for cd in 1...max(inputNumbers[0], inputNumbers[1]) {
	if inputNumbers[0] % cd == 0 && inputNumbers[1] % cd == 0 {
		gcd = cd
	}
}

print(gcd)
print(inputNumbers[0] * inputNumbers[1] / gcd) // 최소공배수(LCM)




