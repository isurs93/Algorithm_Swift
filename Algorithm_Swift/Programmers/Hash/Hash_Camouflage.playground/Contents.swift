import Cocoa

func solution(_ clothes:[[String]]) -> Int {

    var dataDictionary : Dictionary = [String:Int]()
    
    for data in clothes {
        //let value = data[0]
        let key = data[1]
        
        if dataDictionary[key] == nil {
            dataDictionary[key] = 1
        } else {
            let insertValue = dataDictionary[key]!
            dataDictionary[key] = insertValue + 1
        }
    }
    
    print(dataDictionary)

    return 0
}

print(solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))

