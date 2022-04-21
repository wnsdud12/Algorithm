import Foundation

var nowTime = readLine()!.split{$0==" "}.map{Int($0)!}
var input = Int(readLine()!)!

var hour = nowTime[0]
var minute = nowTime[1]

minute += input

while minute >= 60 {
    minute -= 60
    hour += 1
}
while hour > 23 {
    hour -= 24
}
print("\(hour) \(minute)")
