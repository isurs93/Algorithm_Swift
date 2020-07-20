//
//  H-Index.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/12.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class H_Index{
    func solution(_ citations:[Int]) -> Int {
        
        var result = 0
        let dataList = citations.sorted()
        var targetIndex: Int = dataList.count / 2
        
        while(true){
            var under = 0
            var over = 0
            for data in dataList {
                if data >= dataList[targetIndex] {
                    under += 1
                }
                else {
                    over += 1
                }
            }
            
            
        }
        
        return result
    }
}
