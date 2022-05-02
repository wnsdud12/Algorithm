import Foundation
var a = Int(readLine()!)!
var alphanumeric = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\\$%*+-./:"
var aa: [Character] = Array(alphanumeric)
for _ in 1...a {
    let input = readLine()!.split{$0==" "}.map{String($0)}
    let a = Int(input[0])!
    let b: [Character] = Array(input[1])
    var result = ""
    for i in b {
        if aa.contains(i) {
            for _ in 0..<a {
                result += String(i)
            }
        } else {
            break
        }
    }
    print(result)
}
