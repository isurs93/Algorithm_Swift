//
//  disguise.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/15.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class disguise {
    
    func solution(_ clothes:[[String]]) -> Int {
        var insertedKey = [String]()
        var result = [Int]()
        
        for index in 0..<clothes.count {
            let searchKey = clothes[index][1]
            if !insertedKey.contains(searchKey){
                insertedKey.append(searchKey)
                
                var sumKeyCount = 0
                for searchIndex in index..<clothes.count {
                    let keyName = clothes[searchIndex][1]
                    if keyName == searchKey {
                        sumKeyCount += 1
                    }
                }
                result.append(sumKeyCount)
            }
        }

        return 0
    }
}

