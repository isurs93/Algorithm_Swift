//
//  Sort.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/06.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class HighestNumber{
    
    func solution(_ numbers:[Int]) -> String {
        let dataList = numbers.map() {String($0)}.sorted(by: {$0+$1 > $1+$0})
        print(dataList)
        if dataList[0] == "0" { return "0" }
        return dataList.joined()
    }
}

