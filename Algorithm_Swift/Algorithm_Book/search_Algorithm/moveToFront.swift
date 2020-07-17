//
//  moveToFront.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/16.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

// 찾은 결과 값을 배열의 맨 앞으로 보낸다.
class moveToFront{
    func moveToFrontSearch(list: [Int], target: Int) -> [Int]{
        var index = 0
        while(true){
            if list[index] == target {
                break;
            }
            else {
                index += 1
            }
        }
        
        var returnList = list
        returnList.remove(at: index)
        returnList.insert(target, at: 0)
        
        return returnList
    }
    
    func swiftWay(list: [Int], target: Int) -> [Int] {
        
        var returnList = list
        let index = returnList.firstIndex(of: target)!
        returnList.remove(at: index)
        returnList.insert(target, at: 0)
        
        return returnList
    }
}
