//
//  stack1.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/08.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class stack1{
    func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {        
        var pass = [Int]()
        var inBridge = [Int]()
        var passLength = [Int]()
        var wait = truck_weights
        
        var time = 0
        var nowBridgeWeight = 0
        
        while(pass.count != truck_weights.count){
            
            time += 1
            
            for index in 0..<passLength.count{
                passLength[index] += 1
            }

            if passLength.count != 0 && passLength[0] == bridge_length {
                nowBridgeWeight -= inBridge.first!
                pass.append(inBridge.first!)
                inBridge.removeFirst()
                passLength.removeFirst()
            }
            
            if wait.count != 0 && nowBridgeWeight + wait.first! <= weight {
                inBridge.append(wait.first!)
                nowBridgeWeight += wait.first!
                wait.removeFirst()
                passLength.append(0)
            }
            
            print(pass, inBridge, wait, time, passLength)
        }
        
        return time
    }
}

