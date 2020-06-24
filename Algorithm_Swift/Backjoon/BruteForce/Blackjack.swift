import Foundation

class Blackjack{
    
    func Solution() {
        let str = readLine()!.split(separator: " ")

        let count = Int(str[0])!
        let target = Int(str[1])!
        
        let receiveData = readLine()!.split(separator: " ")
        var receiveList = [Int]()
        
        var result = 0
        var nearResult = 0
        
        for insertData in receiveData {
            receiveList.append(Int(insertData)!)
        }
        
        for index1 in 0..<count-2 {
            for index2 in index1+1..<receiveList.count-1{
                for index3 in index2+1..<receiveData.count {
                    let testResult = receiveList[index1] + receiveList[index2] + receiveList[index3]

                    if testResult == target {
                        result = testResult
                        break;
                    }
                    else if target > testResult && testResult > nearResult {
                        nearResult = testResult
                    }
                }
            }
        }
        
        if result == target { print(result) }
        else { print(nearResult) }
    }
}
