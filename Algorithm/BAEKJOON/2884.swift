import Foundation

var inputs = readLine()!.split{$0==" "}.map{Int($0)!}

var hour = inputs[0]
var minute = inputs[1]

switch (hour, minute) {
    case (0, 0..<45):
        hour = 23
        minute += 15
    case (1...23, 0..<45):
        hour -= 1
        minute += 15
    case (_, 45...59):
        minute -= 45
    case (_, _):
        break
}
print("\(hour) \(minute)")
