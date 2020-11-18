import Cocoa

func solution(_ numbers:[Int]) -> [Int] {
    
    var numberList : Set = Set<Int>()
    
    var nowIndex = 1
    for num in numbers {
        for i in nowIndex..<numbers.count {
            numberList.update(with: num + numbers[i])
        }
        nowIndex += 1
    }
    return numberList.sorted()
}

//solution([2,1,3,4,1])
solution([5,0,2,7])

func solution2(_ numbers:[Int]) -> [Int] {
    
    var numberList : [Int] = []
    
    var nowIndex = 1
    for num in numbers {
        for i in nowIndex..<numbers.count {
            let insertNumber = num + numbers[i]
            if !numberList.contains(insertNumber) {
                numberList.append(insertNumber)
            }
        }
        nowIndex += 1
    }
    return numberList.sorted()
}
solution2([5,0,2,7])

