import Foundation

var input = readLine()

if let input = input {
    let inputs = input.components(separatedBy: " ")
    let int1 = Int(inputs[0])!
    let int2 = Int(inputs[1])!

    print(int1 + int2)
}
