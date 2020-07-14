//
//  numberSort.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/08.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class numberSort{
    func solution(){
        
        let count = Int(readLine()!)!
        
        var number = [Int]()
        for _ in 1...count {
            number.append(Int(readLine()!)!)
        }

        for i in number.sorted() {
            print(i)
        }
    }
}
