import Cocoa

func groupCheck(_ num:Int, _ minus:Int = 1) -> [Int] {
    let count = num - minus
    if count > 0 {
        if (count) - (minus+1) > 0 {
            return groupCheck(count, minus+1)
        } else {
            return [minus, count]
        }
    } else {
        return [minus, minus]
    }
}

//let number = Int(readLine()!)!
let number = 4
let data = groupCheck(number)

if number == 1 { print("1/1") }
else {
    if data[0]%2 == 1 {
        var left = 1
        var right = data[0] + 1
        for _ in 1..<data[1] {
            left += 1
            right -= 1
        }
        print("\(left)/\(right)")
    } else {
        var left = data[0] + 1
        var right = 1
        for _ in 1..<data[1] {
            left -= 1
            right += 1
        }
        print("\(left)/\(right)")
    }
}


