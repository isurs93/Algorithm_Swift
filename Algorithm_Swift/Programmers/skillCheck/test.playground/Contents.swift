import Cocoa

func sum(first: Int) -> ((Int) -> Int) {
    return { one in first + one }
}

print(sum(first: 10))

print(sum(first: 5))
