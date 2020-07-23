import Cocoa

func solution(_ record:[String]) -> [String] {
    var dataDic = Dictionary<String, String>()
    var log = [String]()
    
    for data in record {
        let dataRecord = data.components(separatedBy: " ")
        let command = dataRecord[0]
        let userId = dataRecord[1]
        let userNick = dataRecord.count == 3 ? dataRecord.last! : nil
        
        if command == "Enter" {
            dataDic.updateValue(userNick!, forKey: userId)
            let insertData = "\(userId)님이 들어왔습니다."
            log.append(insertData)
        }
        else if command == "Change" {
            dataDic.updateValue(userNick!, forKey: userId)
        }
        else {
            let insertData = "\(userId)님이 나갔습니다."
            log.append(insertData)
        }
    }
    
    for index in 0..<log.count {
        let cutIndex = log[index].firstIndex(of: "님")!
        let userId = String(log[index][log[index].startIndex..<cutIndex])
        let nick = dataDic[String(userId)]!
        
        log[index] = log[index].replacingOccurrences(of: userId, with: nick)
    }
    

    return log
}

print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo", "Leave uid1234", "Enter uid1234 Prodo", "Change uid4567 Ryan"]))



