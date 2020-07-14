//
//  openChat.swift
//  Algorithm_Swift
//
//  Created by 박성주 on 2020/07/11.
//  Copyright © 2020 박성주. All rights reserved.
//

import Foundation

class openChat{
    func solution(_ record:[String]) -> [String]{

        var userData : [String : String] = [:]
        let logData = record
        var result = [String]()
        
        for str in logData{
            let data = str.components(separatedBy: " ")
            
            let command = data[0]
            let userId = data[1]
            var nickName = ""
            if data.count == 3 {
                nickName = data[2]
            }
            
            if command == "Enter"{
                userData.updateValue(nickName, forKey: userId)
                result.append("\(userId)님이 들어왔습니다.")
            }
            else if command == "Change" {
                userData.updateValue(nickName, forKey: userId)
            }
            else if command == "Leave" {
                result.append("\(userId)님이 나갔습니다.")
            }
        }
        
        for index in 0..<result.count{
            for (key, value) in userData {
                if result[index].contains(key) {
                    result[index] = result[index].replacingOccurrences(of: key, with: value)
                }
            }
        }

        return result
    }
}
