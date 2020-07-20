//
//  mock_test.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/20.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class mock_test{
    
    func solution(_ answers: [Int]) -> [Int] {
        
        let student1 = [1, 2, 3, 4, 5]
        let student2 = [2, 1, 3, 4, 5]
        let student3 = [3, 1, 2, 4, 5]
        
        var scores = [0, 0, 0]
        var student1_Index = 0
        var student2_Index = 1
        var student3_Index = 0
        var studnet3_check = 0
        
        for index in 0..<answers.count {
            let problemAnswer = answers[index]
            
            // 1번 학생 채점
            scores[0] = student1[student1_Index] == problemAnswer ? scores[0]+1 : scores[0]
            student1_Index += 1
            if student1_Index == student1.count { student1_Index = 0}
            
            // 2번 학생 채점
            if index%2 == 0 {
                scores[1] = student2[0] == problemAnswer ? scores[1]+1 : scores[1]
            }else {
                scores[1] = student2[student2_Index] == problemAnswer ? scores[1]+1 : scores[1]
                student2_Index += 1
                if student2_Index == student2.count { student2_Index = 1 }
            }
            
            // 3번 학생 채점
            scores[2] = student3[student3_Index] == problemAnswer ? scores[2]+1 : scores[2]
            student3_Index += 1
            if studnet3_check == 2 {
                studnet3_check = 0
                student3_Index += 1
                if student3_Index == student3.count { student3_Index = 0 }
            }
        }
        
        var result = [Int]()
        for index in 0..<scores.count {
            if scores[index] == scores.max()! {
                result.append(index+1)
            }
        }
        
        print(scores)
        
        return result
    }
}
