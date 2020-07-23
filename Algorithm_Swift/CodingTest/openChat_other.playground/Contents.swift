import Cocoa

func solution(_ record: [String]) -> [String] {
    
    var userDic = Dictionary<String, String>()
    var result = [String]()
    
    for data in record {
        let log = data.components(separatedBy: " ")
        if log[0] == "Enter" || log[0] == "Change" {
            userDic.updateValue(log[2], forKey: log[1])
        }
    }
    
    for data in record {
        let log = data.components(separatedBy: " ")
        if log[0] == "Enter" {
            result.append("\(userDic[log[1]]!)님이 들어왔습니다.")
        } else if log[0] == "Leave" {
            result.append("\(userDic[log[1]]!)님이 나갔습니다.")
        }
    }
    
    return result
}

print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo", "Leave uid1234", "Enter uid1234 Prodo", "Change uid4567 Ryan"]))
