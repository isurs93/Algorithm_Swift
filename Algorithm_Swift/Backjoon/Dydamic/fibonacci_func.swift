//
//  fibonacci_func.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/17.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class fibonacci_func{
    func resultFunc(target: Int){
        var count_zero = 0
        var count_one = 0
        
        if target == 0 {
            count_zero += 1
        } else if target == 1 {
            count_one += 1
        } else {
            // 2 일때는 1, 1
            count_zero += 1
            count_one += 1
            
            // 3부터
            for _ in 2..<target {
                let convertValue = count_one
                count_one = count_zero + count_one
                count_zero = convertValue
            }
        }
        
        print(count_zero, count_one)
    }
    
    // 이게 더 빠르고 메모리도 덜 먹음
    func solution() {
        let howMany = Int(readLine()!)!
        var dataList = [Int]()
        for _ in 0..<howMany {
            dataList.append(Int(readLine()!)!)
        }
        
        for index in dataList {
            resultFunc(target: index)
        }
    }
    
    // 이게 메모리 더 먹고 조금 느림
    func otherSolution() {
        let howMany = Int(readLine()!)!
        for _ in 0..<howMany {
            resultFunc(target: Int(readLine()!)!)
        }
    }
}
