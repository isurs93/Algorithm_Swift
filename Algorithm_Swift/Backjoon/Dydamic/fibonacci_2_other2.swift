//
//  fibonacci_2_other2.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/17.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

// 배열을 사용해서 함수 사용 안 하고
class fibonacci_2_other2{
    func solution(){
        let target = Int(readLine()!)!
        var fibonacciList = [0,1]
        
        if target > 1{
            for index in 2...target {
                let insertData = fibonacciList[index-1] + fibonacciList[index-2]
                fibonacciList.append(insertData)
            }
        }
        print(fibonacciList[target])
    }
}
