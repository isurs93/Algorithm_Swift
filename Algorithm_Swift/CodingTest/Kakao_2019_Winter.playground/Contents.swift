import Cocoa


func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var boardList = board
    var basket = [Int]()
    var result = 0

    for move in moves {
        print(move)
        let moveIndex = move-1
        if boardList[boardList.count-1][moveIndex] != 0 {
            for index in 0..<boardList.count {
                if boardList[index][moveIndex] != 0 {
                    let doll = boardList[index][moveIndex]
                    basket.append(doll)
                    boardList[index][moveIndex] = 0
                    break
                }
            }
        }
        
        if basket.count > 1 {
            if basket.last! == basket[basket.count-2] {
                basket.popLast()
                basket.popLast()
                result += 1
            }
        }
    }

    return result
}

print(solution([[0, 0, 0, 0, 0], [0, 0, 1, 0, 3], [0, 2, 5, 0, 1], [4, 2, 4, 4, 2], [3, 5, 1, 3, 1]], [1, 5, 3, 5, 1, 2, 1, 4]))
