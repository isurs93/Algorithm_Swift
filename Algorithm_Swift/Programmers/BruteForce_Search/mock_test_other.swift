//
//  mock_test_other.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/20.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class mock_test_other {
    func solution(_ answers: [Int]) -> [Int] {
        
        let student1 = [1, 2, 3, 4, 5]
        let student2 = [2, 1, 2, 3, 2, 4, 2, 5]
        let student3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
        
        var scores = [0, 0, 0]
        
        for index in 0..<answers.count {
            let answer = answers[index]
            scores[0] = student1[index%student1.count] == answer ? scores[0]+1 : scores[0]
            scores[1] = student2[index%student2.count] == answer ? scores[1]+1 : scores[1]
            scores[2] = student3[index%student3.count] == answer ? scores[2]+1 : scores[2]
        }
        
        var result = [Int]()
        for index in 0...2 {
            if scores[index] == scores.max()! {
                result.append(index+1)
            }
        }
        
        return result
    }
}
