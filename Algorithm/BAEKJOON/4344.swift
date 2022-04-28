import Foundation
var num = Int(readLine()!)!
for i in 0 ..< num {
    var count = 0.0
    var input = readLine()!.split{$0==" "}.map{Double($0)!}
    var studentNumber = input.removeFirst()
    var average = input.reduce(0,+) / studentNumber
    for j in input {
        if j > average {
            count += 1
        }
    }
    print("평균 : \(average)")
    print("평균 이상 : \(count)")
    var result = String(format: "%.3f", count / Double(input.count) * 100)
    print("\(result)%")
}
