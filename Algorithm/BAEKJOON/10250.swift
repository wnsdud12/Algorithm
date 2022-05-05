import Foundation
var num = Int(readLine()!)!

for _ in 1 ... num {
    var input = readLine()!.split{$0==" "}.map{Int($0)!}

    var w = 0
    var h = 0
    if input[2] % input[0] == 0 {
        w = input[0]
        h = input[2] / input[0]
    } else {
        w = input[2] % input[0]
        h = Int(ceil(Double(input[2]) / Double(input[0])))
    }
    var str = String(format: "%02d", h)
    print("\(w)\(str)")
}
