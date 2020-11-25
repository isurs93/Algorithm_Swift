import Cocoa
import Cocoa


func solution(_ s:String) -> String {
    
    let index = s.index(s.startIndex, offsetBy: s.count/2)
    if s.count%2 != 0 {
        return String(s[index])
    } else {
        let firstIndex = s.index(s.startIndex, offsetBy: s.count/2-1)
        return String(s[firstIndex...index])
    }
}

print(solution("abcde"))
print(solution("qwerq"))

