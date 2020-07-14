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
        print(citations.max()!)
        print(citations.firstIndex(of: citations.max()!)!)
        print(citations[citations.firstIndex(of: citations.max()!)!])
        let result = citations.firstIndex(of: citations.max()!)!
        return result
    }
}
