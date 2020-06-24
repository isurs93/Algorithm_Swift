//
//  BigSize.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/06/24.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

struct info {
    let weight:Int
    let height:Int
    var grade:Int
}

class BigSiz{
    
    func Solution(){
        let count = Int(readLine()!)!
        var dataList = [info]()
        
        for _ in 1...count{
            let weight = Int(readLine()!)!
            let height = Int(readLine()!)!
            let insert = info(weight: weight, height: height, grade: 1)
            
            dataList.append(insert)
        }
        
        // 등 수를 정하는 반복문
//        for _ in
    }
}
