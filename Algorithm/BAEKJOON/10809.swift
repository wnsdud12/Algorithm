import Foundation
var input = Array(readLine()!).map{$0.asciiValue!}

var result = ""
for i in (97...122) {
    if input.contains(UInt8(i)) {
        result += "\(input.firstIndex(of: UInt8(i))!)" + " "
    } else {
        result += "-1" + " "
    }
}
print(result)

