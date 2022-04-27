import Foundation

var input = Int(readLine()!)!

var result: Int = 0
while input >= 0 {
    result += input
    input -= 1
}
print(result)
