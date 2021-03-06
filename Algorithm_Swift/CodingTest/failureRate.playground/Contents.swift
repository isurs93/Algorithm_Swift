import Cocoa

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var eachFailure = Dictionary<Int, Double>()
    var stageList = stages.sorted().reversed()
    for stage in 1...N {
        if !stageList.contains(stage) {
            eachFailure.updateValue(0.0, forKey: stage)
            beforeIndex = stageList.lastIndex(of: stage) ?? 0
            continue
        }
        
        var notClear:Double = 0
        var clear:Double = 0
        for each in stageList {
            if each == stage {
                notClear += 1
            }
            else if each > stage { clear += 1 }
        }
        
        let value = notClear != 0 ? notClear/(clear+notClear) : 0
        eachFailure.updateValue(value, forKey: stage)
    }

    return eachFailure.sorted(by: {
        if $0.value == $1.value { return $0.key < $1.key }
        else { return $0.value > $1.value }
    }).map({$0.key})

}

print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))
print(solution(4, [4, 4, 4, 4, 4]))
