//
//  fibonacci_2_other.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/17.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

// target만 입력받아 출력해주는 피보나치 수열
class fibonacci_2_other {
    func calc(target: Int, _ before1: Int = 0 , _ before2: Int = 1, _ now: Int = 0) -> Int{
        if target == 0 { return 0 }
        else if target == 1 { return 1}

        let result = before1 + before2
        print(now, result)
        if now == target {
            return result
        }
        else if !(now == 1 || now == 0) {
            return calc(target: target, before2, result, now+1)
        }
        else {
            return calc(target: target, 0, 1, now+1)
        }
    }
    
    func solution(){
        print("hello")
        let target = Int(readLine()!)!
        print(calc(target: target))
    }
}
