//
//  SeperateSum.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/06/24.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class SeperateSum{
    
    func Square(digits:Int)->Int{
        if digits == 0 { return 1 }
        
        var returnValue = 1
        for _ in 0..<digits-1{
            returnValue *= 10
        }
        return returnValue
    }
    
    func Seperate(target:Int)->Int{
        var calcNum = target
        var returnValue = 0
        
        while(true){
            returnValue += calcNum%10
            calcNum = calcNum/10
            if calcNum == 0 {break}
        }
        
        return returnValue
    }
    
    func Solution(){
        let target = Int(readLine()!)!
        
        var digits = 0
        var calcNum = target
        
        while(true){
            calcNum /= 10
            if calcNum == 0 {break}
            digits += 1
        }

        for number in Square(digits: digits)...target{
            let result = number + Seperate(target: number)
            if result == target {
                print(number)
                break
            }else if number == target { print(0) }
        }
    }
}
