import Cocoa

func compare(_ key1: Int, _ value1: Double, _ key2: Int, _ value2: Double) -> Bool {
    
    if value1 > value2 {
        return true
    } else if value1 == value2 {
        if key1 < key2 {
            return true
        } else {
            return false
        }
    } else {
        return false
    }
}

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var eachFailure = Dictionary<Int, Double>()
    var stages = stages
    for stage in 1...N {
       var notClear:Double = 0
       var clear:Double = 0
       for each in stages {
           if each == stage { notClear += 1 }
           else if each > stage { clear += 1 }
       }
        
        let value = notClear != 0 ? notClear/(clear+notClear) : 0
        eachFailure.updateValue(value, forKey: stage)
        
        // 시간 초과 문제만 해결하면 된다.
        var count = 0
        while(count < 10) {
            let index = stages.firstIndex(of: stage)
            if index != 0 {
                count += 1
            } else {
                count += 1
            }
        }
    }

//    let result = eachFailure.sorted(by: {compare($0.key, $0.value, $1.key, $1.value)}).map({$0.key})

    let result = eachFailure.sorted(by: {
        if $0.value == $1.value { return $0.key < $1.key }
        else { return $0.value > $1.value}
    }).map({$0.key})
    
    return result
}

print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))
print(solution(4, [4, 4, 4, 4, 4]))
