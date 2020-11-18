//
//  stack2.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/09.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class stack2{
    func solution(_ heights:[Int]) -> [Int] {
        
        var result = [Int]()
        var arrayHeights = heights
        
        var index = arrayHeights.lastIndex(of: arrayHeights.last!)!
        
        while(true){
            if arrayHeights[index] > arrayHeights.last!{
                print(index)
                result.append(index+1)
                arrayHeights.popLast()
                index = arrayHeights.lastIndex(of: arrayHeights.last!)!
                print(index)
            }else{
                index -= 1
            }
            
            if index == -1{
                result.append(0)
                arrayHeights.popLast()
                
                if arrayHeights.count == 0 { break }
                else {
                    index = arrayHeights.lastIndex(of: arrayHeights.last!)!
                }
            }
        }
                
        return result.reversed()
    }
}
