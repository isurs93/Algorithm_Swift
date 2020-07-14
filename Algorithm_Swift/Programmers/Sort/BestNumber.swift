//
//  BestNumber.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/08.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

struct values{
    let value : Int
    var rank : Int = 0
    var index : Int = 0
    var convertValue : Int
    var eachValue : [Int]
}

class BestNumber{
    func solution(_ numbers:[Int]) -> String {
        
        var valuesArray = [values]()
        var nowIndex : Int = 0
        var nowValue = numbers[nowIndex]
        var eachValues = [Int]()
        
        while(true) {
            if nowValue == 0{
                eachValues = eachValues.reversed()
                let insert = values(value: numbers[nowIndex], rank: nowIndex, index: nowIndex, convertValue: eachValues.last!, eachValue: eachValues)
                valuesArray.append(insert)
                
                nowIndex += 1
                if nowIndex == numbers.count {break}
                else {
                    nowValue = numbers[nowIndex]
                    eachValues.removeAll()
                }
            }
            else {
                eachValues.append(nowValue%10)
                nowValue /= 10
            }
        }
        
        for now in 0..<valuesArray.count{
            for compare in 0..<valuesArray.count{
                if valuesArray[now].convertValue > valuesArray[compare].convertValue {
                    if valuesArray[now].eachValue.count != valuesArray[compare].eachValue.count {
                        if valuesArray[now].eachValue.count < valuesArray[compare].eachValue.count{
                            let changeValue = valuesArray[now]
                            valuesArray[now] = valuesArray[compare]
                            valuesArray[compare] = changeValue
                        }
                        else {
                            
                        }
                    }
                    else {
                        let changeValue = valuesArray[now]
                        valuesArray[now] = valuesArray[compare]
                        valuesArray[compare] = changeValue
                    }
                }
                else if valuesArray[now].convertValue == valuesArray[compare].convertValue {
                    if valuesArray[now].eachValue.count != valuesArray[compare].eachValue.count {
                        if valuesArray[now].eachValue.count < valuesArray[compare].eachValue.count{
                            let changeValue = valuesArray[now]
                            valuesArray[now] = valuesArray[compare]
                            valuesArray[compare] = changeValue
                        }
                    }
                    else if valuesArray[now].eachValue.count == valuesArray[compare].eachValue.count {
                        print(valuesArray[now].eachValue[0], valuesArray[compare].eachValue[0])
                        for digits in 0..<valuesArray[now].eachValue.count{
                            if valuesArray[now].eachValue[digits] > valuesArray[compare].eachValue[digits] {
                                let changeValue = valuesArray[now]
                                valuesArray[now] = valuesArray[compare]
                                valuesArray[compare] = changeValue
                                break
                            }
                        }
                    }
                }
            }
        }
        
        var result = ""
        for index in valuesArray {
            result += String(index.value)
        }

        return result
    }
}
