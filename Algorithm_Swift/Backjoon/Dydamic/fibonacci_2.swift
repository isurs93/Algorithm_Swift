//
//  fibonacci_2.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/17.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

// 맨 처음 작성한 피보나치 수열 재귀 함수를 사용해보자는 생각
class fibonacci_2{
    func calc(_ target: Int, _ list: [Int], _ now: Int = 0) -> Int{
        var result = 0
        var returnList = list

        if now == 0 {
            returnList.append(0)
        } else if now == 1 {
            returnList.append(1)
        } else{
            result = returnList[now-1] + returnList[now-2]
            returnList.append(result)
        }

        if now == target {
            return returnList.last!
        }
        else {
            return calc(target, returnList, now+1)
        }
    }
    
    func solution() {
        let target = Int(readLine()!)!
        var fibonacciList = [Int]()
        print(calc(target, fibonacciList))
        
    }
}
