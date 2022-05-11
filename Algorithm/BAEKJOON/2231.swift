import Foundation
var input = Int(readLine()!)!
var initalNum: Int?
for i in 0 ..< input {
    let sum = constInt(i)
    if sum == input {
        if initalNum == nil {
            initalNum = i
        }
        break
    }
}
if initalNum != nil {
    print(initalNum!)
} else {
    print(0)
}

func constInt(_ n: Int) -> Int {
    var remain = 10
    var divide = 1
    var sum = n
    while n / divide != 0 {
        sum += n % remain / divide
        divide *= 10
        remain *= 10
    }
    return sum
}

/*
 /10
 %10
 123 % 10
 1
 2 123 / 10 % 10
 3 123 % 10


 1234
 1 1234 % 10000 / 1000
 2 1234 % 1000 / 100
 3 1234 % 100 / 10
 4 1234 % 10 / 1
 */

