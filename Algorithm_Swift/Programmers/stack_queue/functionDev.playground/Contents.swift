import Cocoa


func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var progressData = progresses
    var speedData = speeds
    
    var beforDistribution = 0
    var insertValue = 0
    var resultList = [Int]()
    
    while true {
        let workDay = Int(ceil( (100-Double(progressData[0])) / Double(speedData[0]) ))
        if progresses.count == progressData.count {
            beforDistribution = workDay
            insertValue += 1
            progressData.remove(at: 0)
            speedData.remove(at: 0)
            continue
        }
        
        if workDay <= beforDistribution {
            insertValue += 1
        } else {
            resultList.append(insertValue)
            insertValue = 1
            beforDistribution = workDay
        }
        
        progressData.remove(at: 0)
        speedData.remove(at: 0)
        
        if progressData.count == 0 {
            resultList.append(insertValue)
            break
        }
    }

    return resultList
}

print(solution([93, 30, 55], [1, 30, 5]))
